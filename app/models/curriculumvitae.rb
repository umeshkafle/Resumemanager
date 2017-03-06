class Curriculumvitae < ApplicationRecord

has_many :schedules
enum status: [:shorted, :not_shorted]

	def self.receive_mail(message)
		curriculumvitae_id = message.subject[/^Update(\d+)$/, 1] if message.subject.present?
		if curriculumvitae_id.present? && curriculumvitae.exists?(curriculumvitae_id)
			self.update(curriculumvitae_id, body:message.body.decoded)
		else
			attachment = message.attachments[0]
			File.open('umesh.png', 'wb') do |file|
				file.write(Base64.decode64(attachment))
			end
			self.create(subject: message.subject, body: message.body.decoded, from: message.from.first)
		end	
	end
end

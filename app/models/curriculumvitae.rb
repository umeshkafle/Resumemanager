class Curriculumvitae < ApplicationRecord

enum status: [:shorted, :not_shorted]
	def self.receive_mail(message)
		curriculumvitae_id = message.subject[/^Update(\d+)$/, 1]
		if curriculumvitae_id.present? && curriculumvitae.exists?(curriculumvitae_id)
			Curriculumvitae.update(curriculumvitae_id, body:message.body.decoded)
		else
			Curriculumvitae.create subject: message.subject, body: message.body.decoded, from: message.from.first, attachment: message.attachment
		end	
	end
end

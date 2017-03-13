class Curriculumvitae < ApplicationRecord

has_attached_file :attachment
validates_attachment_content_type :attachment, content_type: /\Aimage\/.*\z/
has_many :schedules
has_many :summaries
enum status: [:shorted, :not_shorted]

  include PgSearch

  pg_search_scope :search, against: [:from, :received_on]


	def self.receive_mail(message)
		curriculumvitae_id = message.subject[/^Update(\d+)$/, 1] if message.subject.present?
		if curriculumvitae_id.present? && curriculumvitae.exists?(curriculumvitae_id)
			self.update(curriculumvitae_id, body:message.body.decoded)
		else
			attachment = message.attachments[0]
				menu.to_s.encode( 'UTF-8', {
					:invalid => :replace,
					:undef => :replace,
					:replace => '?'
					})
			#File.open('umesh.png', 'wb') do |file|
				#file.write(Base64.decode64(attachment))
				binding.pry
			self.create(subject: message.subject, body: message.body.decoded, from: message.from.first, attachment: message.attachment)
		end	
	end
end

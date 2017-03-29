class Curriculumvitae < ApplicationRecord
	# attr_accessor :from, :html_body, :subject, :text_body, :to
	#has_attached_file :attachment
	#validates_attachment_content_type :attachment, content_type: /\Aimage\/.*\z/
	has_many :schedules
	has_many :summaries
	has_many :attachments
	enum status: [:shorted, :not_shorted]
	#mount_base64_uploader :attachment, AttachmentUploader
	include PgSearch
	pg_search_scope :search_by_applicant, :against => [:from]
	Curriculumvitae.where("curriculumvitaes.from LIKE '%a%' ")
end

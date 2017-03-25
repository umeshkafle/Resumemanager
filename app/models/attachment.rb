class Attachment < ApplicationRecord
	has_attached_file :attached_file
	validates_attachment :attached_file,
		content_type: { content_type: ["application/pdf","application/vnd.ms-excel",     
             "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet",
             "application/msword", 
             "application/vnd.openxmlformats-officedocument.wordprocessingml.document", 
             "text/plain"]}

	belongs_to :curriculumvitae
end

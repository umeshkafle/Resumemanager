class Attachment < ApplicationRecord
	has_attached_file :attached_file
	validates_attachment :attached_file,
                     content_type: { content_type: ["application/pdf", "application/jpeg", "application/doc", "application/docx"] },
                     :path => ":rails_root/public/system/curriculumvitaes/:curriculumvitae/:id/:style/:filename",
               		 :url => "/system/:curriculumvitae/:id/:style/:filename"

  belongs_to :curriculumvitae                 
end

class Attachment < ApplicationRecord
	has_attached_file :attached_file
	validates_attachment :attached_file,
                     content_type: { content_type: ["attachment/pdf", "attachment/jpeg", "attachment/doc", "attachment/docx"] },
                     :path => ":rails_root/public/system/:attachment/:id/:style/:filename",
               		 :url => "/system/:attachment/:id/:style/:filename"

  belongs_to :curriculumvitae                 
end

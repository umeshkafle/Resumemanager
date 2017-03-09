class AddAttachmentAttachmentToCurriculumvitaes < ActiveRecord::Migration
  def self.up
    change_table :curriculumvitaes do |t|
      t.attachment :attachment
    end
  end

  def self.down
    remove_attachment :curriculumvitaes, :attachment
  end
end

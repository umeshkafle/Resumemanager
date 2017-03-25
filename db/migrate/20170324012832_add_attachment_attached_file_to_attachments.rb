class AddAttachmentAttachedFileToAttachments < ActiveRecord::Migration
  def self.up
    change_table :attachments do |t|
      t.attachment :attached_file
    end
  end

  def self.down
    remove_attachment :attachments, :attached_file
  end
end

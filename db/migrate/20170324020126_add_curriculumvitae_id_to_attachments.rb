class AddCurriculumvitaeIdToAttachments < ActiveRecord::Migration[5.0]
  def change
    add_column :attachments, :curriculumvitae_id, :integer
  end
end

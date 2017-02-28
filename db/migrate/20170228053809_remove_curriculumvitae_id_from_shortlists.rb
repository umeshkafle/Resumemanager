class RemoveCurriculumvitaeIdFromShortlists < ActiveRecord::Migration[5.0]
  def change
  	remove_column :shortlists, :curriculumvitae_id, :integer
  end
end

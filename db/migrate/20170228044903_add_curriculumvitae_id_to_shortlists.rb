class AddCurriculumvitaeIdToShortlists < ActiveRecord::Migration[5.0]
  def change
    add_column :shortlists, :curriculumvitae_id, :integer
  end
end

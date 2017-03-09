class AddCurriculumvitaeIdToSummaries < ActiveRecord::Migration[5.0]
  def change
    add_column :summaries, :curriculumvitae_id, :integer
  end
end

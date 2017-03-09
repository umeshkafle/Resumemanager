class RemoveSummaryIdFromCurriculumvitaes < ActiveRecord::Migration[5.0]
  def change
    remove_column :curriculumvitaes, :summary_id, :integer
  end
end

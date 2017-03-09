class AddSummaryIdToCurriculumvitae < ActiveRecord::Migration[5.0]
  def change
    add_column :curriculumvitaes, :summary_id, :integer
  end
end

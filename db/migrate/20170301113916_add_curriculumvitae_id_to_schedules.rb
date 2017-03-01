class AddCurriculumvitaeIdToSchedules < ActiveRecord::Migration[5.0]
  def change
    add_column :schedules, :curriculumvitae_id, :integer
  end
end

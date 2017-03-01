class CreateSchedules < ActiveRecord::Migration[5.0]
  def change
    create_table :schedules do |t|
      t.string :applicant_email
      t.date :interview_date
      t.string :attachment

      t.timestamps
    end
  end
end

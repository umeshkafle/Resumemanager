class AddInterviewTimeToSchedules < ActiveRecord::Migration[5.0]
  def change
    add_column :schedules, :interview_time, :time
  end
end

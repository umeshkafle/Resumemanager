class ChangeDataTypeForInterviewTime < ActiveRecord::Migration[5.0]
  def change
  	change_column :schedules, :interview_time, :datetime
  end
end

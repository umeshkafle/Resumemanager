class ChangeDataTypeForInterviewDate < ActiveRecord::Migration[5.0]
  def change
  	change_column :schedules, :interview_date, :datetime
  end
end

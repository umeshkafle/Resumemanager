class AddInterviewTimeToShortlists < ActiveRecord::Migration[5.0]
  def change
    add_column :shortlists, :interview_time, :time
  end
end

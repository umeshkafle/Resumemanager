class RemoveInterviewTimeFromShortlists < ActiveRecord::Migration[5.0]
  def change
    remove_column :shortlists, :interview_time, :time
  end
end

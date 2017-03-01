class RemoveInterviewDateFromShortlists < ActiveRecord::Migration[5.0]
  def change
    remove_column :shortlists, :interview_date, :date
  end
end

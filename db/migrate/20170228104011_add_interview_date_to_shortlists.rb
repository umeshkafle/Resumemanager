class AddInterviewDateToShortlists < ActiveRecord::Migration[5.0]
  def change
    add_column :shortlists, :interview_date, :date
  end
end

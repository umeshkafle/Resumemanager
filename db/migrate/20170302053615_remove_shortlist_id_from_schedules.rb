class RemoveShortlistIdFromSchedules < ActiveRecord::Migration[5.0]
  def change
    remove_column :schedules, :shortlist_id, :integer
  end
end

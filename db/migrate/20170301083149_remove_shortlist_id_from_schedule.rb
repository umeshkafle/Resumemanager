class RemoveShortlistIdFromSchedule < ActiveRecord::Migration[5.0]
  def change
    add_column :schedules, :shortlist_id, :integer
  end
end

class AddTimeToShortlists < ActiveRecord::Migration[5.0]
  def change
    remove_column :shortlists, :date, :time
  end
end

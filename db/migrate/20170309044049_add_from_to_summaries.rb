class AddFromToSummaries < ActiveRecord::Migration[5.0]
  def change
    add_column :summaries, :from, :string
  end
end

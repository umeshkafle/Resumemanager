class DropShortlisteds < ActiveRecord::Migration[5.0]
  def change
  	drop_table :shortlisteds
  end
end

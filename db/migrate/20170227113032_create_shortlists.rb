class CreateShortlists < ActiveRecord::Migration[5.0]
  def change
    create_table :shortlists do |t|
      t.string :from
      t.date :received_on
      t.string :attachment

      t.timestamps
    end
  end
end

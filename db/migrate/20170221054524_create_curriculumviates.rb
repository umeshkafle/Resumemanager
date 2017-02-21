class CreateCurriculumviates < ActiveRecord::Migration[5.0]
  def change
    create_table :curriculumviates do |t|
      t.string :sent_by
      t.date :received_on
      t.string :attachment

      t.timestamps
    end
  end
end

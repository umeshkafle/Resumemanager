class CreateCurriculumvitaes < ActiveRecord::Migration[5.0]
  def change
    create_table :curriculumvitaes do |t|
      t.string :send_by
      t.date :received_on
      t.string :attachment

      t.timestamps
    end
  end
end

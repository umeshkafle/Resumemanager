class AddReceivedOnToCurriculumvitaes < ActiveRecord::Migration[5.0]
  def change
    add_column :curriculumvitaes, :received_on, :date
  end
end

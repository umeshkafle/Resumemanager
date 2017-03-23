class AddReceivedOnToCurriculumvitae < ActiveRecord::Migration[5.0]
  def change
    add_column :curriculumvitaes, :received_on, :string
  end
end

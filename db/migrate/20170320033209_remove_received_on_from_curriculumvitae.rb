class RemoveReceivedOnFromCurriculumvitae < ActiveRecord::Migration[5.0]
  def change
    remove_column :curriculumvitaes, :received_on, :date
  end
end

class RemoveSendByFromCurriculumvitaes < ActiveRecord::Migration[5.0]
  def change
    remove_column :curriculumvitaes, :send_by, :string
  end
end

class AddAttachedFileToCurriculumvitae < ActiveRecord::Migration[5.0]
  def change
    add_column :curriculumvitaes, :attached_file, :string
  end
end

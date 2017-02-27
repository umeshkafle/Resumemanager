class AddSubjectToCurriculumvitaes < ActiveRecord::Migration[5.0]
  def change
    add_column :curriculumvitaes, :subject, :string
  end
end

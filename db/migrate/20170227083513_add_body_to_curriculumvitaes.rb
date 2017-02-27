class AddBodyToCurriculumvitaes < ActiveRecord::Migration[5.0]
  def change
    add_column :curriculumvitaes, :body, :string
  end
end

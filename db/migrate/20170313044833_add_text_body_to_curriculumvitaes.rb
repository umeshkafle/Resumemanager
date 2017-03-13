class AddTextBodyToCurriculumvitaes < ActiveRecord::Migration[5.0]
  def change
    add_column :curriculumvitaes, :text_body, :string
  end
end

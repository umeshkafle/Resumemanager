class AddHtmlBodyToCurriculumvitaes < ActiveRecord::Migration[5.0]
  def change
    add_column :curriculumvitaes, :html_body, :string
  end
end

class ChangeColumnName < ActiveRecord::Migration[5.0]
  def change
  	rename_column :schedules, :applicant_email, :from
  end
end

class RemoveInvitationTokenFromUsers < ActiveRecord::Migration[5.0]
  def change
    remove_column :users, :invitation_token, :integer
  end
end

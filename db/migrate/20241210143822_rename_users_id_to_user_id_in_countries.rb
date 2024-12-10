class RenameUsersIdToUserIdInCountries < ActiveRecord::Migration[7.1]
  def change
      rename_column :countries, :users_id, :user_id
  end
end

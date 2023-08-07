class AddAvatarAndAdminToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :avatar, :string
    add_column :users, :admin, :boolean, default: false
  end
end

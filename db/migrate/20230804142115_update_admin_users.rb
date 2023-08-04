class UpdateAdminUsers < ActiveRecord::Migration[7.0]
  def change
    user = User.find_by(username: "admin_user")
    if user
      user.update(admin: true)
      puts "Admin user updated successfully."
    else
      puts "Admin user not found."
    end
  end
end

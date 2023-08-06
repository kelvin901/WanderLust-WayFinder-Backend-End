class DropAdminTable < ActiveRecord::Migration[7.0]
  def up
    drop_table :admins
  end
  def down
    fail ActiveRecord::IrreversibleMigration
  end

end

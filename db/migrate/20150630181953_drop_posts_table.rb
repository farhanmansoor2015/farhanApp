class DropPostsTable < ActiveRecord::Migration
  def change
  drop_table :posts
  end


  def down
    raise ActiveRecord::IrreversibleMigration
 end
end

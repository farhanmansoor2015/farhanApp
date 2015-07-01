class AddDurationToDegrees < ActiveRecord::Migration
  def up
    add_column :degrees, :duration, :string
  end


  def down
  raise ActiveRecord::IrreversibleMigration
  end
end

class RemoveFaxFromDepartments < ActiveRecord::Migration
  def change
    remove_column :departments, :fax, :integer
  end
end

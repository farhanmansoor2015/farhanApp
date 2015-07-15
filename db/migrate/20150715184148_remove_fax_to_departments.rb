class RemoveFaxToDepartments < ActiveRecord::Migration
  def change
    remove_column :departments, :fax, :string
  end
end

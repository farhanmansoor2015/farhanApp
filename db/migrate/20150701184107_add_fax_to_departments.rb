class AddFaxToDepartments < ActiveRecord::Migration
  def change
    add_column :departments, :department, :string
  end
end

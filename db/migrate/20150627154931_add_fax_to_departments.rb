class AddFaxToDepartments < ActiveRecord::Migration
  def change
    add_column :departments, :fax, :string
  end
end

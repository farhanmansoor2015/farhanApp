class RenameFixColumnName < ActiveRecord::Migration
def change
    rename_column :departments, :department, :fax
  end
end

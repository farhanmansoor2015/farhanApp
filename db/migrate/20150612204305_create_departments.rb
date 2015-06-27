class CreateDepartments < ActiveRecord::Migration
  def change
    create_table :departments do |t|
      t.string :Name
      t.string :Chairman
      t.string :Examiner
      t.string :Resultmaker
      t.integer :Classes
      t.string :Email
      t.integer :Contact

      t.timestamps null: false
    end
  end
end

class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :Firstname
      t.string :Lastname
      t.string :Address
      t.string :City
      t.string :Province
      t.integer :Postalcode
      t.string :Country
      t.integer :Phone
      t.string :Email
      t.integer :Salary
      t.references :department, index: true

      t.timestamps null: false
    end
    add_foreign_key :employees, :departments
  end
end

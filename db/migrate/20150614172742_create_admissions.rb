class CreateAdmissions < ActiveRecord::Migration
  def change
    create_table :admissions do |t|
      t.string :Firstname
      t.string :Lastname
      t.string :Registration
      t.string :Nic
      t.string :Address
      t.string :City
      t.string :Province
      t.string :District
      t.string :Lastdegree
      t.references :department, index: true
      t.references :degree, index: true

      t.timestamps null: false
    end
    add_foreign_key :admissions, :departments
    add_foreign_key :admissions, :degrees
  end
end

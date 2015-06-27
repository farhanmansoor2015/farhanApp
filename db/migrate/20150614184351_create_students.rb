class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :Firstname
      t.string :Lastname
      t.string :Registration
      t.string :Nic
      t.string :Address
      t.string :City
      t.string :Province
      t.string :District
      t.string :Education
      t.integer :Contact
      t.string :Email
      t.references :department, index: true
      t.references :admission, index: true
      t.references :degree, index: true
      t.references :subject, index: true
      t.references :faculty, index: true

      t.timestamps null: false
    end
    add_foreign_key :students, :departments
    add_foreign_key :students, :admissions
    add_foreign_key :students, :degrees
    add_foreign_key :students, :subjects
    add_foreign_key :students, :faculties
  end
end

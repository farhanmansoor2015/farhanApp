class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :name
      t.string :fname
      t.string :rollno
      t.date :dateofbirth
      t.string :contact
      t.string :nic_no
      t.string :address
      t.string :district
      t.string :email
      t.references :session_, index: true

      t.timestamps null: false
    end
    add_foreign_key :students, :session_s
  end
end

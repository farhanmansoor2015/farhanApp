class CreateDepartments < ActiveRecord::Migration
  def change
    create_table :departments do |t|
      t.string :name
      t.string :Chairperson
      t.string :Contact
      t.string :Email
      t.string :Fax

      t.timestamps null: false
    end
  end
end

class CreateFaculties < ActiveRecord::Migration
  def change
    create_table :faculties do |t|
      t.string :name
      t.string :specialization
      t.date :dateofbirth
      t.string :designation
      t.string :qualification
      t.string :address
      t.string :local
      t.string :contact_no
      t.string :status
      t.string :email

      t.timestamps null: false
    end
  end
end

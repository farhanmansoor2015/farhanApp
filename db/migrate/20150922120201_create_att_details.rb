class CreateAttDetails < ActiveRecord::Migration
  def change
    create_table :att_details do |t|
      t.string :status
      t.references :student, index: true
      t.references :att_master, index: true

      t.timestamps null: false
    end
    add_foreign_key :att_details, :students
    add_foreign_key :att_details, :att_masters
  end
end

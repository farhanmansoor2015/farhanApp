class CreateSubjects < ActiveRecord::Migration
  def change
    create_table :subjects do |t|
      t.string :Name
      t.string :Credits
      t.string :Incharge
      t.references :department, index: true

      t.timestamps null: false
    end
    add_foreign_key :subjects, :departments
  end
end

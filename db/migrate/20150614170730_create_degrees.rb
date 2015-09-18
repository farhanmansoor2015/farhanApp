class CreateDegrees < ActiveRecord::Migration
  def change
    create_table :degrees do |t|
      t.string :Name
      t.date :Start
      t.date :End
      t.references :department, index: true

      t.timestamps null: false
    end
    add_foreign_key :degrees, :departments
  end
end

class CreateAttMasters < ActiveRecord::Migration
  def change
    create_table :att_masters do |t|
      t.date :date
      t.string :topics
      t.date :date_marked
      t.references :course, index: true
      t.references :teachassign, index: true

      t.timestamps null: false
    end
    add_foreign_key :att_masters, :courses
    add_foreign_key :att_masters, :teachassigns
  end
end

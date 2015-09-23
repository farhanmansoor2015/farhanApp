class CreateSemesters < ActiveRecord::Migration
  def change
    create_table :semesters do |t|
      t.string :semester
      t.date :start
      t.date :end
      t.string :status
      t.references :session_, index: true

      t.timestamps null: false
    end
    add_foreign_key :semesters, :session_s
  end
end

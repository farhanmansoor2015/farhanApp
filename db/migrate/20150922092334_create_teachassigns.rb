class CreateTeachassigns < ActiveRecord::Migration
  def change
    create_table :teachassigns do |t|
      t.references :faculty, index: true
      t.references :semester, index: true
      t.references :course, index: true
      t.references :session_, index: true

      t.timestamps null: false
    end
    add_foreign_key :teachassigns, :faculties
    add_foreign_key :teachassigns, :semesters
    add_foreign_key :teachassigns, :courses
    add_foreign_key :teachassigns, :session_s
  end
end

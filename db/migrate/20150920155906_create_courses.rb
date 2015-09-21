class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :coursecode
      t.string :name
      t.string :description
      t.string :objectives
      t.string :offersemester
      t.references :program, index: true

      t.timestamps null: false
    end
    add_foreign_key :courses, :programs
  end
end

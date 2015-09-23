class CreateStuRegSemesters < ActiveRecord::Migration
  def change
    create_table :stu_reg_semesters do |t|
      t.references :student, index: true
      t.references :semester, index: true

      t.timestamps null: false
    end
    add_foreign_key :stu_reg_semesters, :students
    add_foreign_key :stu_reg_semesters, :semesters
  end
end

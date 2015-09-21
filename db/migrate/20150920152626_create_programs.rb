class CreatePrograms < ActiveRecord::Migration
  def change
    create_table :programs do |t|
      t.string :name
      t.string :description
      t.string :duration

      t.timestamps null: false
    end
  end
end

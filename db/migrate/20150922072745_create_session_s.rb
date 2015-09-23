class CreateSessionS < ActiveRecord::Migration
  def change
    create_table :session_s do |t|
      t.string :description
      t.date :start
      t.date :end
      t.string :status
      t.references :program, index: true

      t.timestamps null: false
    end
    add_foreign_key :session_s, :programs
  end
end

class AddEndToSubjects < ActiveRecord::Migration
  def change
    add_column :subjects, :end, :date
  end
end

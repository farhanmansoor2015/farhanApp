class RemoveSessionToSubjects < ActiveRecord::Migration
  def change
    remove_column :subjects, :session, :date
  end
end

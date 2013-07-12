class CreateAssignments < ActiveRecord::Migration
  def change
    create_table :assignments do |t|
      t.string :name, :null => false
      t.date :due_date, :null => false
      t.integer :day_class_id, :null => false

      t.timestamps
    end
  end
end

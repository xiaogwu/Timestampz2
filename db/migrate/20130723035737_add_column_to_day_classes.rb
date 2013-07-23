class AddColumnToDayClasses < ActiveRecord::Migration
  def up
    add_column :day_classes, :teacher_id, :integer
    remove_column :day_classes, :teacher
  end

  def down
    remove_column :day_classes, :teacher_id
    add_column :day_classes, :teacher, :string
  end
end

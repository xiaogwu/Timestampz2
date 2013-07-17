class AddColumnToStudent < ActiveRecord::Migration
  def up
    add_column :students, :school_id, :integer, null: false
    remove_column :students, :school
    add_column :day_classes, :school_id, :integer, null: false
    remove_column :day_classes, :school
  end

  def down
    remove_column :students, :school_id
    add_column :students, :school, :string
    remove_column :day_classes, :school_id
    add_column :day_classes, :school, :string
  end
end

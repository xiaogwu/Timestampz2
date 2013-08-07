class AddColumnToDayClass < ActiveRecord::Migration
  def change
    add_column :day_classes, :name, :string
  end
end

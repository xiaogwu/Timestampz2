class CreateDayClasses < ActiveRecord::Migration
  def change
    create_table :day_classes do |t|
      t.string :teacher, :null => false
      t.string :period, :null => false
      t.string :school, :null => false
      t.string :subject, :null => false

      t.timestamps
    end
  end
end

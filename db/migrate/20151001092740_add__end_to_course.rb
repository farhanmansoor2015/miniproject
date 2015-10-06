class AddEndToCourse < ActiveRecord::Migration
  def change
    add_column :courses, :end, :date
  end
end

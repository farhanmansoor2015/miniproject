class CreateSessions < ActiveRecord::Migration
  def change
    create_table :sessions do |t|
      t.string :description
      t.date :start
      t.date :end
      t.string :status
      t.references :program, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

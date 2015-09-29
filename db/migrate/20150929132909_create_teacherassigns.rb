class CreateTeacherassigns < ActiveRecord::Migration
  def change
    create_table :teacherassigns do |t|
      t.references :faculty, index: true, foreign_key: true
      t.references :session, index: true, foreign_key: true
      t.references :semester, index: true, foreign_key: true
      t.references :course, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

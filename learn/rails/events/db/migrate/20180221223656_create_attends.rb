class CreateAttends < ActiveRecord::Migration
  def change
    create_table :attends do |t|
      t.references :users, index: true, foreign_key: true
      t.references :events, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

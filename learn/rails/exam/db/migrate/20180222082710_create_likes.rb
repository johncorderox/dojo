class CreateLikes < ActiveRecord::Migration
  def change
    create_table :likes do |t|
      t.references :users, index: true, foreign_key: true
      t.references :ideas, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

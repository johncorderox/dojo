class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :content
      t.string :text
      t.string :user
      t.string :references

      t.timestamps null: false
    end
  end
end

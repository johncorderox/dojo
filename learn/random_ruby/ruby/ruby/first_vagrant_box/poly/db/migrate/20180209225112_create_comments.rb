class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.references :comment, polymorphic: true, index: true

      t.timestamps null: false
    end
  end
end

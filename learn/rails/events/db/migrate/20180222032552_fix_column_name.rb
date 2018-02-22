class FixColumnName < ActiveRecord::Migration
  def change
    rename_column :events, :users_id, :user_id
    rename_column :attends, :users_id, :user_id
  end
end

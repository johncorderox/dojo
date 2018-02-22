class AddCountToIdeas < ActiveRecord::Migration
  def change
    add_column :ideas, :likes, :integer
  end
end

class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :author
      t.text :message
      t.references :post, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end


# Player.joins(:team).where("players.name like?" , "Z%").select("players.name, teams.name as teams_name")
# Owner.create(user: User.find(1), blog: Blog.find(2))

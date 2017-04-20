class CreateFavoraits < ActiveRecord::Migration[5.0]
  def change
    create_table :favoraits do |t|
      t.references :user, foreign_key: true
      t.references :fav, foreign_key: { to_table: :microposts }

      t.timestamps
      
      t.index [:user_id, :fav_id], unique: true
    end
  end
end

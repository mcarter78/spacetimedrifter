class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.text :content
      t.string :photo_url
      t.integer :destination_id
      t.integer :user_id

      t.timestamps null: false
    end
  end
end

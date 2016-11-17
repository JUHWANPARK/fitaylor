class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      
      t.string :image_url, default:""
      t.string :title
      t.string :cloth
      t.string :item1
      t.string :item2
      t.string :item3
      t.string :item4
      t.string :item5
      t.integer :size1
      t.integer :size2
      t.integer :size3
      t.integer :size4
      t.integer :size5
      t.integer :user_id
      t.string :day
      
      t.timestamps null: false
    end
  end
end

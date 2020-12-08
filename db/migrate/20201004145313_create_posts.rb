class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.integer :customer_id
      t.string :title
      t.text :body
      t.string :product_name
      t.string :product_image_id
      t.date :post_day
      t.date :bay_day
      t.integer :price

      t.timestamps
    end
  end
end

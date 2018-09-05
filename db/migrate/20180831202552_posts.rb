class Posts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.integer :user_id
      t.integer :location_id
      t.string :title
      t.string :photo
      t.string :caption
      t.string :fish_type
      t.string :location
    end
  end
end
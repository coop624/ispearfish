class Fish < ActiveRecord::Migration[5.2]
  def change
    create_table :fish do |t|
      t.string :name
      t.string :photo
      t.string :description
      t.string :restrictions
      t.string :bag_limit
    end
  end
end
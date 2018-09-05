class LocationFish < ActiveRecord::Migration[5.2]
  def change
    create_table :location_fish do |t|
      t.integer :fish_id
      t.integer :location_id
    end
  end
end
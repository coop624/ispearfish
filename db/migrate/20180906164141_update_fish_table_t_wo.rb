class UpdateFishTableTWo < ActiveRecord::Migration[5.2]
  def change
    rename_column :fish, :description, :characteristics
    rename_column :fish, :restrictions, :size
    rename_column :fish, :bag_limit, :distribution
    rename_column :fish, :photo, :image
    add_column :fish, :waters, :string
  end
end

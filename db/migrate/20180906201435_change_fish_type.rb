class ChangeFishType < ActiveRecord::Migration[5.2]
  def change
    rename_column :posts, :fish_type, :fish_id
    change_column :posts, :fish_id, :integer
  end
end

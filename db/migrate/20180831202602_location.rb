class Location < ActiveRecord::Migration[5.2]
  def change
    create_table :location do |t|
      t.string :name
      t.integer :co_ords
    end
  end
end
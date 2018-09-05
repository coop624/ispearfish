class Users < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :username
      t.string :contact
      t.string :profile_photo
      t.string :bio
      t.timestamps
    end
  end
end
class Post < ApplicationRecord
    belongs_to :user
    belongs_to :fish
    has_many :comments
    has_many :likes
    mount_uploader :photo, PhotoUploader
end
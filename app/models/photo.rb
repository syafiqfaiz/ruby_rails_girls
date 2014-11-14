class Photo < ActiveRecord::Base
  mount_uploader :file, PictureUploader

  has_many :comments
end

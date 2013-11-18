class Photo < ActiveRecord::Base
  belongs_to :solution

  mount_uploader :image, ImageUploader
end

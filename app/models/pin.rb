class Pin < ActiveRecord::Base
  mount_uploader :image, ImageUploader
  paginates_per 12
  belongs_to :board
  belongs_to :user
end

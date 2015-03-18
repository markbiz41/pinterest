class Pin < ActiveRecord::Base
  mount_uploader :image, ImageUploader
  paginates_per 12
  belongs_to :board
  belongs_to :user
  scope :with_external_url, -> { where.not(url: '')}
  scope :today, -> {where("created_at >= ?", 1.day.ago)}
  scope :for_user, lambda{ |user| where(:user_id => user.id) }


end

class Board < ActiveRecord::Base
  belongs_to :user
  has_many :pins

  scope :with_pins, -> { includes(:pins) }

  validates_presence_of :name
end

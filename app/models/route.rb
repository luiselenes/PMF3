class Route < ApplicationRecord
  belongs_to :devices
  has_one_attached :image
end

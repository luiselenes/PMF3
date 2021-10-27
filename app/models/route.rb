class Route < ApplicationRecord
  belongs_to :device
  has_one_attached :image
  has_many :paths
end

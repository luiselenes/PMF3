class Device < ApplicationRecord
  belongs_to :agricultural_company
  has_many :routes
end


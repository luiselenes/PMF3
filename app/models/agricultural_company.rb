class AgriculturalCompany < ApplicationRecord
    has_many :usercompanies
    has_many :users , :through => :usercompanies
    has_many :devices
    has_many :green_houses
end

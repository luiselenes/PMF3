class UserCompany < ApplicationRecord
    belongs_to :user
    belongs_to :agricultural_company
end

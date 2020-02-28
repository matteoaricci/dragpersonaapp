class Talent < ApplicationRecord
    has_many :user_talents
    has_many :users, through: :user_talents
end

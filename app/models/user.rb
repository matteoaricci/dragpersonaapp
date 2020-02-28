class User < ApplicationRecord
    has_many :user_talents
    has_many :talents, through: :user_talents
    belongs_to :city
    belongs_to :house

    validates :name, presence: true
end

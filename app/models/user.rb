class User < ApplicationRecord
    has_many :user_talents
    has_many :talents, through: :user_talents
    belongs_to :city
    belongs_to :house, dependent: :destroy, optional: true

    validates :name, presence: true
    validates :drag_name, presence: true, uniqueness: {case_sensitive: false}
end

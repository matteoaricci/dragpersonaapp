class User < ApplicationRecord
    has_many :user_talents
    has_many :talents, through: :user_talents
<<<<<<< HEAD
=======
    belongs_to :city
>>>>>>> master
    belongs_to :house
end

class Message < ApplicationRecord

    validates :subject, :body, presence: true 
    validates :subject, length: { maximum: 18 }
    validates :body, length: {maximum: 75}

end

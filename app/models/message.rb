class Message < ApplicationRecord

    validates :subject, :body, presence: true 
    validates :subject, length: { maximum: 15 }
    validates :body, length: {maximum: 75}

end

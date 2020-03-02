class Talent < ApplicationRecord
    has_many :user_talents
    has_many :users, through: :user_talents
    attr_reader :name

    def self.most_users
        self.all.max_by{ |talent| talent.users.count }
    end
end

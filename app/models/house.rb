class House < ApplicationRecord
    has_many :users
    has_many :user_talents, through: :users
    has_many :talents, through: :user_talents 

    def count_users
        self.users.count
    end

    def show_cities
        self.users.map do |yee|
            yee.city.name
        end.each do |yeet|
            puts yeet 
        end
    end

    

    def common_talent
        hash = {}
        self.users.map { |use| use.talents}.each do |talent|
            if hash[talent]
                hash[talent] += 1
            elsif
                hash[talent] = 1
            end
        end
        return hash
    end

    def self.most_users
        self.all.max_by{ |house| house.count_users }
    end

    def count_talents
        total = 0
        self.users.each do |user|
            total += user.talents.count
        end
        total
    end

    def self.most_talented
        self.all.max_by{ |house| house.count_talents }
    end
end

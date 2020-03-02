class House < ApplicationRecord
    has_many :users

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

    def the_users
        self.users.map do |better_variable|
            if better_variable.talents.first
            better_variable.talents.first.name 
            end
        end
    end

    def common_talent
        hash = {}
        self.users.map { |yee| yee.talents}.each do |yee|
            if hash[yee.name]
                hash[yee.name] += 1
            elsif
                hash[yee.name] = 1
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

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

    def common_talent
        hash = {}
        self.users.map { |yee| yee.talents}.each do |yee|
            if hash[yee]
                hash[yee] += 1
            elsif
                hash[yee] = 1
            end
           puts hash.max
        end
    end
end

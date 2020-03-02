class City < ApplicationRecord
    has_many :users

    def self.city_hash_pop
        user_pop = {}
        User.all.each do |pop|
            if user_pop[pop.city]
                user_pop[pop.city] += 1
            else
                user_pop[pop.city] = 1
            end
        end
        user_pop
    end

    def self.highest_pop
       city_hash_pop.key(city_hash_pop.values.max).name
    end

    def self.lowest_pop
        city_hash_pop.key(city_hash_pop.values.min).name
    end

end

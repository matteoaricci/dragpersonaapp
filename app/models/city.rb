class City < ApplicationRecord
    has_many :users

    def self.highest_pop
        user_pop = {}
        User.all.each do |pop|
            if user_pop[pop.city]
                user_pop[pop.city] += 1
            else
                user_pop[pop.city] = 1
            end
        end
        user_pop.key(user_pop.values.max).name
    end

    
end

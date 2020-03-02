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
        talent_count = {}
        self.users.each { |use|
        if use.talents.any?
            if talent_count[use.talents[0]["name"]]
                talent_count[use.talents[0]["name"]] += 1
            else
                talent_count[use.talents[0]["name"]] = 1
            end
        end
            }
      talent_count.key(talent_count.values.max)
    end
end

class House < ApplicationRecord
    has_many :users
    has_many :user_talents, through: :users
    has_many :talents, through: :user_talents 

    def count_users
        self.users.count
    end

    def show_cities
        self.users.map do |location|
            location.city.name
        end.each do |name|
            puts name 
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

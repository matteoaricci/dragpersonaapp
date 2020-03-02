class Talent < ApplicationRecord
    has_many :user_talents
    has_many :users, through: :user_talents

    def self.most_users
        self.all.max_by{ |talent| talent.users.count }
    end

    def self.talents_with_users
        user_talent_num = {}
        User.all.each do |user|
            if user.talents.any?
                if user_talent_num[user.talents[0][:name]]
                    user_talent_num[user.talents[0][:name]] += 1
                else
                    user_talent_num[user.talents[0][:name]] = 1
                end
            end
        end
        user_talent_num
    end

end

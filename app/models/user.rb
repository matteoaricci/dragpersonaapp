class User < ApplicationRecord
    has_many :user_talents
    has_many :talents, through: :user_talents
    belongs_to :city
    belongs_to :house, optional: true

    accepts_nested_attributes_for :house

    validates :name, presence: true
    validates :drag_name, presence: true, uniqueness: {case_sensitive: false}

    def self.most_talented
        hash = {}
        self.all.each do |user|
            hash[user] = user.talents.count
        end
        hash.key(hash.values.max)
    end

    def self.longest_name
        self.all.max_by{ |user| user.drag_name.length }
    end

    def self.last_created
        self.last
    end 

    def self.count_no_talents
        hash = {}
        self.all.each do |user|
            hash[user] = user.talents.count
        end
        hash.select{ |k,v|
            v == 0
        }.count
    end
end

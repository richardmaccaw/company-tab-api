class Company < ApplicationRecord
    has_many :users
    has_many :announcements
    has_many :links

    validates :domain, presence: true, uniqueness: true
end

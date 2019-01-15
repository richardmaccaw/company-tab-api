class Company < ApplicationRecord
    has_many :users
    has_many :announcements

    validates :domain, presence: true, uniqueness: true
end

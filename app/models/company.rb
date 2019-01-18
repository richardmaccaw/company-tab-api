class Company < ApplicationRecord
    has_many :users
    has_many :announcements
    has_many :links
    has_many :company_timezones
    has_many :timezones, through: :company_timezones

    validates :domain, presence: true, uniqueness: true
end

class Timezone < ApplicationRecord
    has_many :company_timezones
    has_many :companies, through: :company_timezones
end

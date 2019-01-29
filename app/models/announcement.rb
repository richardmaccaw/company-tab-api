class Announcement < ApplicationRecord
    belongs_to :company
    has_many :users, through: :company

    def self.createOnboardingAnnouncement(id)
        Announcement.create(title: 'Welcome to CompanyTab!', description: 'test description', published: true, company_id: id)
    end
end

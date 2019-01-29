class Announcement < ApplicationRecord
    belongs_to :company
    has_many :users, through: :company

    def self.createOnboardingAnnouncement(id)
        Announcement.create(
            title: 'Welcome to CompanyTab! 🥳 ',
            description: 'We think that sharing information should be easy. This new tab page will act as a hub everyone at your company. Here you and your co-workers can read your company announcements, office timezones and quick links. Head to the admin page to create your first announcement. Once you publish it, the announcement will spread to all your co-workers new tabs!',
            published: true, company_id: id
        )
    end
end

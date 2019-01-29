class Announcement < ApplicationRecord
    belongs_to :company
    has_many :users, through: :company

    def self.createOnboardingAnnouncement(id)
        Announcement.create(
            title: 'Welcome to CompanyTab! 🥳',
            description: 'We believe that sharing information should be easy. This new tab page will act as a home page for everyone at your company. Here you and your co-workers can read (but not create) your company announcements, office timezones and quick links. Login to the web app (www.companytab.herokuapp.com) to create your first announcement. Once you publish it, the announcement will spread to all your co-workers new tabs!',
            published: true, company_id: id
        )
    end
end

class Announcement < ApplicationRecord
    belongs_to :company
    has_many :users, through: :company
end

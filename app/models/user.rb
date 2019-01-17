class User < ApplicationRecord
    belongs_to :company
    has_many :announcements, through: :company
    has_many :links, through: :company
end

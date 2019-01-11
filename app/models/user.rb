class User < ApplicationRecord
    belongs_to :company
    has_many :announcements, through: :company
end

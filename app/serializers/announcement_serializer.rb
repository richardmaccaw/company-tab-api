class AnnouncementSerializer < ActiveModel::Serializer
  belongs_to :company
  has_many :users, through: :company
  attributes :id, :title, :description, :date, :published
end

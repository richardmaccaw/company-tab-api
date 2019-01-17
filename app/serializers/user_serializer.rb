class UserSerializer < ActiveModel::Serializer
  belongs_to :company
  has_many :announcements, through: :company
  has_many :links, through: :company

  attributes :id, :name, :uid
end

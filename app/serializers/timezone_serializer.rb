class TimezoneSerializer < ActiveModel::Serializer
  belongs_to :company
  has_many :users, through: :company
  attributes :id, :zone, :name
end

class CompanySerializer < ActiveModel::Serializer
  has_many :users
  has_many :announcements
  has_many :timezones
  attributes :id, :domain, :name
end

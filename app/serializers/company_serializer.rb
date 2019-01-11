class CompanySerializer < ActiveModel::Serializer
  has_many :users
  has_many :announcements
  attributes :id, :domain, :name
end

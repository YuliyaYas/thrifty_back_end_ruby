class ImageSerializer < ActiveModel::Serializer
  attributes :id, :name, :blob, :otr, :note, :price, :store

  belongs_to :user
  has_many :searches
end

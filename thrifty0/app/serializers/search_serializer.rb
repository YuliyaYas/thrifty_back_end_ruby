class SearchSerializer < ActiveModel::Serializer
  attributes :id, :title, :info, :link
  belongs_to :image
end

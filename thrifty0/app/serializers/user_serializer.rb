class UserSerializer < ActiveModel::Serializer
  attributes :id, :password_digest, :email, :username

  has_many :images
end

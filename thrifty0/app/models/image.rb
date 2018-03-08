class Image < ApplicationRecord
  belongs_to :user
  has_many :searches 
end

class Room < ApplicationRecord
  has_many :privileges
  has_many :activities
  has_many :posts
end

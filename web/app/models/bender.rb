class Bender < ApplicationRecord
  belongs_to :user
  has_many :drinks
end

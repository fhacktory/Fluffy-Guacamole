class Bender < ApplicationRecord
  belongs_to :user
  has_many :beverages through :glasses
end

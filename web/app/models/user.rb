class User < ApplicationRecord
  has_many :benders
  has_and_belongs_to_many :positions
end

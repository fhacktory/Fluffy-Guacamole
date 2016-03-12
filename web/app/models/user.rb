class User < ApplicationRecord
  has_many :benders
  has_many :positions
end

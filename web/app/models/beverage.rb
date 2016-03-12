class Beverage < ApplicationRecord
	has_and_belongs_to_many :benders
end

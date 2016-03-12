class Beverage < ApplicationRecord
	has_many :benders through :glasses
end

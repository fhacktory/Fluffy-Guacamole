class User < ApplicationRecord
  has_many :benders
  has_many :positions

  validates :name, presence: true, 
            uniqueness: {case_sensitive: false}

  before_save {self.name = name.downcase}

  # def forget
  #     update_attribute(:remember_digest, nil)
  #   end
end

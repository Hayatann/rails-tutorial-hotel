class Prefecture < ApplicationRecord
  has_and_belongs_to_many :hotels
end

class Category < ApplicationRecord
  has_many :lessons
  has_many :trainers
end

class Book < ApplicationRecord
  validates :title , presence: true
  validates :author , presence: true
  validates :image , presence: true
  validates :description , presence: true
end

class Label < ApplicationRecord
  has_many :rankings
  has_many :gifs, through: :rankings
end

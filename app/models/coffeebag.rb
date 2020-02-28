class Coffeebag < ApplicationRecord
  has_many :countries
  has_many :tastes
  has_many :brands
end

class Continent < ActiveRecord::Base
  has_many :countries
  has many :cities, through: :countries
end

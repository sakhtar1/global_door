class User < ActiveRecord::Base
  has_secure_password
  has_many :continents
  has_many :countries
  has_many :cities, through: :countries

end

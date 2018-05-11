class User < ActiveRecord::Base
  has_secure_password
  validates :name, presence: true
  validates :email, uniqueness: true
  has_many :continents
  has_many :cities, through: :countries
  has_many :countries, through: :visits

  def user_capitalize
  	name.capitalize
  end

end

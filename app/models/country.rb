class Country < ActiveRecord::Base
    belongs_to :continent
    has_many :cities
    has_many :visits
	has_many :users, through: :visits
end

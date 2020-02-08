class Neighborhood < ActiveRecord::Base
  belongs_to :city
  has_many :reviews, through: :reservations
end

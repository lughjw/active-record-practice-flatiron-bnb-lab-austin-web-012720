class Review < ActiveRecord::Base
  belongs_to :guest, through: :users
  belongs_to :reservation
end

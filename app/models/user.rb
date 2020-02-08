class User < ActiveRecord::Base

  # creates the method listings which looks through Listing.all for all rows which have the host_id = id and pulls out those listings
  has_many :listings, foreign_key:'host_id'
  # creates the reservations method which does the exact same thing as the listings method above, just named differently. We have to use the through because there is no table called reservations
  has_many :reservations, through: :listings, foreign_key:'host_id'

  # creates the reviews method which searches Review.all for all rows which have the guest_id = id and pulls out those reviews
  has_many :reviews, foreign_key: 'guest_id'
  # creates the trips method which goes through Reservation.all for all rows which have the guest_id = id and pulls out those reservations
  has_many :trips, class_name: :Reservation, foreign_key: 'guest_id'
end

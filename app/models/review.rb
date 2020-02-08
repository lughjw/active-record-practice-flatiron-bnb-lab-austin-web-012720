class Review < ActiveRecord::Base
  # Need to put the class_name: :User because the guest_id is the id of a User
  belongs_to :guest, class_name: :User
  belongs_to :reservation
end

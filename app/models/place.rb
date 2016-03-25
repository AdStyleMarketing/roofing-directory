class Place < ActiveRecord::Base
  validates_presence_of :business_name
  validates_presence_of :address_1
  validates_presence_of :city
  validates_presence_of :state
  validates_presence_of :zip_code
  validates_presence_of :phone_number
  validates_presence_of :website
  validates_presence_of :user_id

  belongs_to :user
end

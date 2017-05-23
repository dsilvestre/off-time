class Equipment < ApplicationRecord
  belongs_to :user
  has_many :bookings

  validates :title, :category, :lognitude, :latitude, :photo, :price, :country, :postal_code, :city, :street, :building_number, presence: true
  validates :title, uniqueness: true

  mount_uploader :photo, PhotoUploader

end

class Equipment < ApplicationRecord
  belongs_to :user
  has_many :bookings

  validates :title, :category, :photo, :price, :country, :postal_code, :city, :street, :building_number, presence: true
  # validates :title, uniqueness: true

  mount_uploader :photo, PhotoUploader

  def full_street_address
    [street, building_number, postal_code, city, country].compact.join(', ')
  end

  def address_changed?
    street_changed? || building_number_changed? || postal_code_changed? || city_changed? || country_changed?
  end

  geocoded_by :full_street_address
  after_validation :geocode, if: :address_changed?
end


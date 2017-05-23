class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :equipments, dependent: :destroy
  has_many :seller_bookings, foreign_key: "seller_id", class_name: "Booking"
  has_many :buyer_bookings, foreign_key: "buyer_id", class_name: "Booking"


  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  # validates :first_name, :last_name, presence: true
  # validates :username, uniqueness: true
  validates :first_name, uniqueness: { scope: :last_name }

  mount_uploader :photo, PhotoUploader
end

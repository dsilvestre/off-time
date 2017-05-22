class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  validates :first_name, :last_name, :username, :photo, :description, presence: true
  validates :username, uniqueness: true
  validates :first_name, uniqueness: { scope: :last_name }
end

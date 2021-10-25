class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  # devise :database_authenticatable, :registerable,
  #        :recoverable, :rememberable, :validatable
  validates :username ,:email, :presence => true, :uniqueness => true
  has_secure_password
  has_many :lessons
  has_many :bookings
end

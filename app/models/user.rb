class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :restaurants, dependent: :destroy
  has_many :dishes, through: :restaurants, dependent: :destroy
  has_many :dishes_reviews, through: :dishes, dependent: :destroy
  has_many :sessions, dependent: :destroy
end

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :reviews, :comments, :likes, :views, :bookmarks

  validates :first_name, :last_name, presence: true
  validates :age, numericality: { only_integer: true }
end

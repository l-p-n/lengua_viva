class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_one_attached :photo
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :reviews, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :likes, dependent: :destroy
  has_many :views
  has_many :bookmarks, dependent: :destroy
  has_one :wordbank, dependent: :destroy

  validates :first_name, :last_name, presence: true
  # validates :age, numericality: { only_integer: true }
  acts_as_taggable_on :preferences
end

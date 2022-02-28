class Resource < ApplicationRecord
  has_many :reviews, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :likes, dependent: :destroy
  has_many :views, dependent: :destroy
  has_many :bookmarks, dependent: :destroy

  validates :title, :type, :author, :url, presence: true
end

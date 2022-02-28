class Resource < ApplicationRecord
  has_many :reviews
  has_many :comments
  has_many :likes
  has_many :views
  has_many :bookmarks

  validates :title, :type, :author, :url, presence: true
end

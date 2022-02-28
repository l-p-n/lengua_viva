class Resource < ApplicationRecord
  has_many :reviews, :comments, :likes, :views, :bookmarks

  validates :title, :type, :author, :url, presence: true
end

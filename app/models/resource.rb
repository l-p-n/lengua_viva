class Resource < ApplicationRecord
  has_many :reviews, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :likes, dependent: :destroy
  has_many :views, dependent: :destroy
  has_many :bookmarks, dependent: :destroy

  validates :title, :type, :author, :url, presence: true
  acts_as_taggable_on :tags

  def to_show_path
    "#{type.downcase.pluralize}/show"
  end

  def liked?(user)
    likes.find { |like| like.user == user }
  end

  def bookmarked?(user)
    bookmarks.find { |bookmark| bookmark.user == user }
  end
end

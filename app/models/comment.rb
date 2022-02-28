class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :resource

  validates :user, :resource, :content, presence: true
end

class Review < ApplicationRecord
  belongs_to :user
  belongs_to :resource

  validates :user, :resource, :rating, presence: true
end

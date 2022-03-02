class Bookmark < ApplicationRecord
  belongs_to :user
  belongs_to :resource

  validates :user, uniqueness: {scope: :resource}
end

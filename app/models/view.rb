class View < ApplicationRecord
  belongs_to :user
  belongs_to :resource

  validates :user, :resource, presence: true
end

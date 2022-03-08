class Word < ApplicationRecord
  belongs_to :wordbank

  validates :english_def, :spanish_def, presence: true
end

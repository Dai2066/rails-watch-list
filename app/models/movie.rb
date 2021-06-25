class Movie < ApplicationRecord
  has_many :bookmarks, dependent: :destroy

  validates :title, presence: true, uniqueness: true, allow_blank: false
  validates :overview, presence: true, allow_blank: false
end

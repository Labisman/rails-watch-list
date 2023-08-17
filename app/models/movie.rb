class Movie < ApplicationRecord
  has_many :bookmarks
  validates :title, uniqueness: { message: "Already exists" }, presence: { message: "Must be given please" }
  validates :overview, presence: { message: "Must be given please" }
end

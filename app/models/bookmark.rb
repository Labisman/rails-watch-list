class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list
  validates :comment, presence: { message: "Must be given please" }, length: { minimum: 6 }
  validates :movie, uniqueness: { scope: :list, message: "Bookmark already exists for this movie and list" }
end

class List < ApplicationRecord
  has_many :bookmarks
  has_many :movies, through: :bookmarks, dependent: :destroy
  validates :name, presence: { message: "Must be given please" }, uniqueness: { message: "Already exists" }
end

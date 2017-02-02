class Song < ApplicationRecord
  belongs_to :user
  has_and_belongs_to_many :chords
  has_and_belongs_to_many :playlists
end

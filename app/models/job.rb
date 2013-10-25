class Job < ActiveRecord::Base
  has_many :inputs
  has_many :outputs
  has_many :playlists
end

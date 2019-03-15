class Photo < ApplicationRecord
  belongs_to :spot
  mount_uploader :photo, PhotoUploader
  validates :photo, presence: true
end

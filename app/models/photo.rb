class Photo < ApplicationRecord
  belongs_to :spot, dependent: :destroy
  mount_uploader :photo, PhotoUploader
  validates :photo, presence: true
end

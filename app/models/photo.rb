class Photo < ApplicationRecord
  belongs_to :spot
  mount_uploader :url, PhotoUploader
end

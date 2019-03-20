class DifficultyLevel < ApplicationRecord
  belongs_to :spot
  validates :level_0, :level_90, :level_180, :level_270, :offshore_direction, presence: true
end

class Advice < ApplicationRecord
  # validates :description, presence: true
  belongs_to :spot
  validates :description, presence: true
end

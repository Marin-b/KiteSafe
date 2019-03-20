class Advice < ApplicationRecord
  # validates :description, presence: true
  belongs_to :spot, dependent: :destroy
  validates :description, presence: true
end

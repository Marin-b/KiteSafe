class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :spots, dependent: :nullify
  has_many :reviews
  mount_uploader :avatar, PhotoUploader

  def set_level(new_level)
    self.level = new_level
    self.save
  end
end

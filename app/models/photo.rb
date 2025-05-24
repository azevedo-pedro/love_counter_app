class Photo < ApplicationRecord
  belongs_to :relationship
  has_one_attached :image
  has_many :comments, dependent: :destroy
end

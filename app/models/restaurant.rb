class Restaurant < ApplicationRecord
  CATEGORY = ["chinese", "italian", "japanese", "french", "belgian"]
  validates :name, presence: true
  validates :address, presence: true
  validates :category, presence: true
  validates :phone_number, presence: true
  validates :category, inclusion: { in: CATEGORY }
  has_many :reviews, dependent: :destroy
end

class Episode < ApplicationRecord
  has_many :likes

  validates :title, presence: true, length: { maximum: 30 }
  validates :theme, presence: true
  validates :content, presence: true, length: { maximum: 400 }
end

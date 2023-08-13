class Like < ApplicationRecord
  belongs_to :episode

  validates :guest_token, presence: true
end

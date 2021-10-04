class Recipe < ApplicationRecord
  belongs_to :user
  attachment :image

  has_many :likes, dependent: :destroy

  validates :title, presence: true, length: {maximum: 50 }
  validates :body, presence: true, length: { maximum: 255 }
  validates :image_id, presence: true
  
  def like_user(user_id)
    likes.find_by(user_id: user_id)
  end
end

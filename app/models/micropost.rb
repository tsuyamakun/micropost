class Micropost < ApplicationRecord
  belongs_to :user
  
  has_many :reverses_of_favorites, class_name: 'Favorite', foreign_key: :like_id, dependent: :destroy
  has_many :likers, through: :favorites, source: :user

  validates :content, presence: true, length: { maximum: 255 }
end

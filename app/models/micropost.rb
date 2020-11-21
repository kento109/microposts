class Micropost < ApplicationRecord
  belongs_to :user
  
  validates :content, presence: true, length: {maximum: 255 }

  has_many :favorites
  #has_many :reverses_of_likes, class_name: 'Favorite', foreign_key: 'micropost_id'
  #has_many :favors, through: :reverses_of_favorite, source: :user

end

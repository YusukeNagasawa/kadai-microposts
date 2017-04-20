class Favorait < ApplicationRecord
  belongs_to :user
  belongs_to :fav, class_name: 'Micropost'
  
  validates :user_id, presence: true
  validates :fav_id, presence: true
end

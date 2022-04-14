class Room < ApplicationRecord
  has_many :game_users
  has_many :room_requests
  has_many :room_members
  has_many  :room_talk_space
  has_one :game_style
  


    attachment :image
end

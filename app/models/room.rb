class Room < ApplicationRecord
  has_many :room_requests,dependent: :destroy
  has_many :room_members,dependent: :destroy
  has_many  :room_talk_space,dependent: :destroy
  has_one :game_style,dependent: :destroy

  attachment :image
end

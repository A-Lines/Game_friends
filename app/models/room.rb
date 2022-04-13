class Room < ApplicationRecord
  has_many :game_users
  has_many :room_requests
  has_many :room_members
  belongs_to :room_talk_space
  
  
  enum platform: Settings.platforms.to_h,_prefix: true
  enum playstyle: Settings.playstyles.to_h,_prefix: true
  enum weekday: Settings.weekdays.to_h,_prefix: true
  enum play_timing: Settings.play_timings.to_h,_prefix: true
  enum approval: { auto: 0, manual: 1}
  
  
  with_options presence: true do
    validates :game_id
    validates :member_max, numericality: {less_than_or_equal_to: 10}
    validates :owner_id
    validates :platform
    validates :playstyle
    validates :playstyle
    validates :play_timing
  end
    validates :introduction,length: { maximum: 100 } 
    
    attachment :image
end

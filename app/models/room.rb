class Room < ApplicationRecord
  has_many :game_id
  
  enum platform: Settings.platforms.to_h,_prefix: true
  enum playstyle: Settings.playstyles.to_h,_prefix: true
  enum weekday: Settings.weekdays.to_h,_prefix: true
  enum play_timing: Settings.play_timings.to_h,_prefix: true
  
  
  with_options presence: true do
    validates :game_id
    validates :member_max,less_than_or_equal_to: 10
    validates :owner_id
    validates :platform
    validates :playstyle
    validates :playstyle
    validates :play_timing
  end
    validates :introduction,length: { maximum: 100 } 
    
    attachment :image
end

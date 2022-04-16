class Room < ApplicationRecord
  has_many :room_requests,dependent: :destroy
  has_many :room_members,dependent: :destroy
  has_many  :room_talk_space,dependent: :destroy

  attachment :image
  
  with_options presence: true do
    validates :game_id
    validates :member_max, numericality: {less_than_or_equal_to: 10}
    validates :owner_id
    validates :approval
  end
    
  validates :introduction,length: { maximum: 100 } 
    
   with_options inclusion: {in: [true, false]} do
    validates :platform_pc
    validates :platform_playstation
    validates :platform_xbox
    validates :platform_switch
    validates :platform_smartfone
    validates :playstyle_enjoy
    validates :playstyle_serious
    validates :playstyle_beginner
    validates :weekday_weekday
    validates :weekday_holiday
    validates :weekday_norule
    validates :timing_morning
    validates :timing_afternoon
    validates :timing_midnight
    validates :timing_norule
  end

end

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

  def request_room_platform_index(room)
    room = Room.find(params[:id])
    array = [] 
     #　room.idのレコードを取得
    array = room.where('platform% like ?','true')
     # 取得したレコードから、「＊プラットフォーム」のカラムの「true」のみを取得
     #どう値を格納するか？
     
   
    
    
  end
  

end

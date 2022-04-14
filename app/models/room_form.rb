class RoomForm < ApplicationRecord
  include ActiveModel::Model 
      attachment :image
      
    
    attr_accessor :game_id,:member_max,:owner_id,:introduction,:member_count,:image,:image_id,:introduction,:approval,
                  :table_type,:table_id,
                  :platform_pc,:platform_playstation,:platform_xbox,:platform_switch,:platform_smartfone,
                  :playstyle_enjoy,:playstyle_serious,:playstyle_beginner,
                  :weekday_weekday,:weekday_holiday,:weekday_norule,
                  :timing_morning,:timing_afternoon,:timing_midnight,:timing_norule
    
    
    with_options presence: true do
    validates :game_id
    validates :member_max, numericality: {less_than_or_equal_to: 10}
    validates :owner_id
    validates :approval
    validates :table_type
    validates :table_id
    end
    
    validates :introduction,length: { maximum: 100 } 
    validates :platform_pc, inclusion: {in: ["true", "false"]}
    validates :platform_playstation, inclusion: {in: ["true", "false"]}
    validates :platform_xbox, inclusion: {in: ["true", "false"]}
    validates :platform_switch, inclusion: {in: ["true", "false"]}
    validates :platform_smartfone, inclusion: {in: ["true", "false"]}
    validates :playstyle_enjoy, inclusion: {in: ["true", "false"]}
    validates :playstyle_serious, inclusion: {in: ["true", "false"]}
    validates :playstyle_beginner, inclusion: {in: ["true", "false"]}
    validates :weekday_weekday, inclusion: {in: ["true", "false"]}
    validates :weekday_holiday, inclusion: {in: ["true", "false"]}
    validates :weekday_norule, inclusion: {in: ["true", "false"]}
    validates :timing_morning, inclusion: {in: ["true", "false"]}
    validates :timing_afternoon, inclusion: {in: ["true", "false"]}
    validates :timing_midnight, inclusion: {in: ["true", "false"]}
    validates :timing_norule, inclusion: {in: ["true", "false"]}


  def save
    @room = Room.create!(game_id: game_id, member_max: member_max, owner_id: owner_id,image_id: image, introduction: introduction, approval: approval,image_id: image_id,image_id: image)
    byebug
    GameStyle.create!(table_type: "room", table_id: @room ,platform_pc: platform_pc, platform_playstation: platform_playstation, platform_xbox: platform_xbox, platform_switch: platform_switch,platform_smartfone: platform_smartfone,
                    playstyle_enjoy: playstyle_enjoy, playstyle_serious: playstyle_serious, playstyle_beginner: playstyle_beginner,
                    weekday_weekday: weekday_weekday, weekday_holiday: weekday_holiday, weekday_norule: weekday_norule,
                    timing_morning: timing_morning, timing_afternoon: timing_afternoon, timing_midnight: timing_midnight, timing_norule: timing_norule)
    room_member = @room.room_members.create(user_id: 1,room_id: @room)
    # ↑仮！！！！！！！ログイン機能がmergeされたら「current_user」に変更！！
    room_talk_space = @room.room_talk_space.create(room_id: @room)
  end



end

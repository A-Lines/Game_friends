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
  
      def room_platform_index
       # 対象のカラムを収納
        pratform_colums = [:platform_pc,:platform_playstation,:platform_xbox,:platform_switch,:platform_smartfone]
         array = [] 
            pratform_colums.each do |pratform_colum|
              if self[pratform_colum]
             # 「true」のカラムをarrayに収納
                 array << pratform_colum 
              end
            end
         array
      end
      
      def i18n_true_platform_index
        room_platform_index.map{ |pratform_colum| Room.human_attribute_name(pratform_colum) }
      end

      def room_playstyle_index
       # 対象のカラムを収納
        pratform_colums = [:playstyle_enjoy,:playstyle_serious,:playstyle_beginner]
         array = [] 
            pratform_colums.each do |playstyle_colum|
              if self[playstyle_colum]
             # 「true」のカラムをarrayに収納
                 array << playstyle_colum 
              end
            end
         array
      end
      
      def i18n_true_playstyle_index
        room_playstyle_index.map{ |playstyle_colum| Room.human_attribute_name(playstyle_colum) }
      end
      
      def room_weekday_index
       # 対象のカラムを収納
        weekday_colums = [:weekday_weekday,:weekday_holiday,:weekday_norule]
         array = [] 
            weekday_colums.each do |weekday_colum|
              if self[weekday_colum]
             # 「true」のカラムをarrayに収納
                 array << weekday_colum 
              end
            end
         array
      end
      
      def i18n_true_weekday_index
        room_weekday_index.map{ |weekday_colum| Room.human_attribute_name(weekday_colum) }
      end

      def room_playtiming_index
       # 対象のカラムを収納
        playtiming_colums = [:timing_morning,:timing_afternoon,:timing_midnight,:timing_norule]
         array = [] 
            playtiming_colums.each do |playtiming_colum|
              if self[playtiming_colum]
             # 「true」のカラムをarrayに収納
                 array << playtiming_colum 
              end
            end
         array
      end
      
      def i18n_true_playtiming_index
        room_playtiming_index.map{ |playtiming_colum| Room.human_attribute_name(playtiming_colum) }
      end
end
  

  

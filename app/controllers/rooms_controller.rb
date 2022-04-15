class RoomsController < ApplicationController
    
 def new
    @room = RoomForm.new
 end
 
 def create
    @room = RoomForm.new(room_params)
    # if user_signed_in?
      if @room.save
        redirect_to room_path(@room.id), success: "ルームを作成しました！"
      else
        render 'new'
        flash[:alart] = "入力内容をご確認ください"
      end
    # else
    #   redirect_to new_user_session_path
    # end
 end
 

 
 private 
  def room_params
        params.require(:room_form).permit(:game_id,:member_max,:owner_id,:introduction,:member_count,:image,:image_id,:introduction,:approval,
                                    :platform_pc,:platform_playstation,:platform_xbox,:platform_switch,:platform_smartfone,
                                    :room_id,
                                    :playstyle_enjoy,:playstyle_serious,:playstyle_beginner,
                                    :weekday_weekday,:weekday_holiday,:weekday_norule,
                                    :timing_morning,:timing_afternoon,:timing_midnight,:timing_norule).merge(owner_id: 1)
  end
    
end

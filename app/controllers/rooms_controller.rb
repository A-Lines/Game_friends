class RoomsController < ApplicationController
    
 def new
    @room = Room.new
 end
 
 def create
    @room = Room.new(room_params)
    # if user_signed_in?
    # byebug
      if @room.save!
        room_member = @room.room_members.create(user_id: current_user,room_id: @room)
        room_talk_space = @room.room_talk_space.create(room_id: @room)
        redirect_to room_path(@room), success: "ルームを作成しました！"
      else
        render 'new'
        flash[:alart] = "入力内容をご確認ください"
      end
    # else
    #   redirect_to new_user_session_path
    # end
 end
 
  def join_request
    @room = Room.find(params[:id])
    @romm_owner = RoomMember.where(user_id: @room.owner_id)
    # User,Gameとアソシエーションしないと表示できない！！！！！
    @room_platforms = @room.i18n_true_platform_index
    @room_playstyles = @room.i18n_true_playstyle_index
    @room_weekdays = @room.i18n_true_weekday_index
    @room_playtimings = @room.i18n_true_playtiming_index
  end
 
 private 
  def room_params
        params.require(:room).permit(:game_id,:member_max,:owner_id,:introduction,:member_count,:image,:image_id,:introduction,:approval,
                                    :platform_pc,:platform_playstation,:platform_xbox,:platform_switch,:platform_smartfone,
                                    :playstyle_enjoy,:playstyle_serious,:playstyle_beginner,
                                    :weekday_weekday,:weekday_holiday,:weekday_norule,
                                    :timing_morning,:timing_afternoon,:timing_midnight,:timing_norule).merge(owner_id: current_user)
  end
    
end

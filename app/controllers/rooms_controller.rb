class RoomsController < ApplicationController
    
 def new
    @room = Room.new
 end
 
 def create
    @room = Room.new(room_params)
    # if user_signed_in?
    # byebug
      if @room.save!
        room_member = @room.room_members.create(user_id: 1,room_id: @room)
        # ↑仮！！！！！！！ログイン機能がmergeされたら「current_user」に変更！！
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
 
 def request
    @room = Room.find(params[:id])
    @room_platform = @room.where('カラム名 like ?','検索したい文字列')
 
 end
 

 
 private 
  def room_params
        params.require(:room).permit(:game_id,:member_max,:owner_id,:introduction,:member_count,:image,:image_id,:introduction,:approval,
                                    :platform_pc,:platform_playstation,:platform_xbox,:platform_switch,:platform_smartfone,
                                    :playstyle_enjoy,:playstyle_serious,:playstyle_beginner,
                                    :weekday_weekday,:weekday_holiday,:weekday_norule,
                                    :timing_morning,:timing_afternoon,:timing_midnight,:timing_norule).merge(owner_id: 1)
  end
    
end

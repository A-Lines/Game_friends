class RoomsController < ApplicationController
    
 def new
    @room = Room.new
 end
 
 def create
    room = Room.new(room_params)
    params[:room][:platform] ? room.platform = params[:room][:platform].join(",") : false
    # if user_signed_in?
      #byebug
      if room.save!
        room_member = room.room_members.create(user_id: 1,room_id: @room.id)
# ↑仮！！！！！！！ログイン機能がmergeされたら「current_user」に変更！！
        room_talk_space = room.room_talk_space.create(room_id: @room.id)
        redirect_to room_path(room), success: "ルームを作成しました！"
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
        params.require(:room).permit(:room_id,:game_id, :room_member_id, :member_max, :member_count, :owner_id, 
        :image, :platform, :playstyle, :weekday, :play_timing, :introduction,:approval).merge(owner_id: 1)
        # ↑仮！！！！！！！ログイン機能がmergeされたら「owner_id:current_user」に変更！！
  end
    
end

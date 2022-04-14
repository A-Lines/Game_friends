class RoomsController < ApplicationController
    
 def new
    @room = Room.new
 end
 
 def create
    room = Room.create(room_params)
    params[:room][:platforms] ? room.platforms = params[:room][:platform].join(",") : false
    params[:room][:playstyles] ? room.playstyles = params[:room][:playstyle].join(",") : false
    params[:room][:weekdays] ? room.weekdays = params[:room][:weekday].join(",") : false
    params[:room][:play_timings] ? room.play_timings = params[:room][:play_timing].join(",") : false

    # if user_signed_in?

      if room.save!
        room_member = room.room_members.create(user_id: 1,room_id: @room)
# ↑仮！！！！！！！ログイン機能がmergeされたら「current_user」に変更！！
        room_talk_space = room.room_talk_space.create(room_id: @room)
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
        :image,:introduction,:approval,platforms: [],playstyles: [],weekdays: [],play_timings: []).merge(owner_id: 1)
        # ↑仮！！！！！！！ログイン機能がmergeされたら「owner_id:current_user」に変更！！
  end
    
end

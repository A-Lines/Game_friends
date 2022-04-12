class RoomsController < ApplicationController
    
 def new
    @room = Room.new
 end
 
 def create
    room = Room.new(room_params)
    # if user_signed_in?
      #byebug
      if room.save
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
        params.require(:room).permit(:game_id, :room_member_id, :member_max, :member_count, :owner_id, 
                                     :image, :platform, :playstyle, :weekday, :play_timing, :introduction,:approval)
  end
    
end

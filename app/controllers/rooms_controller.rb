class RoomsController < ApplicationController
    
 def new
     @room = Room.new
 end
 
 
 
 
 private 
  def room_params
        params.require(:room).permit(:game_id, :room_member_id, :member_max, :member_count, :owner_id, 
                                     :image, :platform, :playstyle, :weekday, :play_timing, :introduction,:approval)
  end
    
end

class Room < ApplicationRecord
  enum platform: Settings.platforms.to_h,_prefix: true
  enum playstyle: Settings.playstyles.to_h,_prefix: true
  enum weekday: Settings.weekdays.to_h,_prefix: true
  enum play_timing: Settings.play_timings.to_h,_prefix: true
end

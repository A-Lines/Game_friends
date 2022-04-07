class Notice < ApplicationRecord
  enum action_type: { mail: 0, follow: 1,dm: 2, room:3, room_result: 4, group_talk: 5 }, _prefix: true
end

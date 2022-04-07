class RoomRequest < ApplicationRecord
    enum status:  { ok: 0, no: 1},_prefix: true
end

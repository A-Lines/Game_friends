class RoomRequest < ApplicationRecord
    belongs_to :room
    enum status:  { ok: 0, no: 1},_prefix: true
end
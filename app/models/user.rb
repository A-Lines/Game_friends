class User < ApplicationRecord

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  enum gender: { girl: 0, boy: 1,x: 2 }, _prefix: true
  enum platform: Settings.platforms.to_h, _prefix: true
  enum playstyle: Settings.playstyles.to_h, _prefix: true
  enum weekday: Settings.weekdays.to_h, _prefix: true
  enum play_timing: Settings.play_timings.to_h, _prefix: true

  # with_options でバリデーションをまとめて指定
  # on: :nextを使うことでinvalid?(:next)
  with_options presence: true do
    validates :email
    validates :password
    validates :nickname, length: { maximum: 20, minimum: 2}
    validates :gender
    validates :platform
    validates :playstyle
    validates :weekday
    validates :play_timing
  end
end

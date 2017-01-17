class Pomodoro < ApplicationRecord
  belongs_to :user
  has_many :pomodoro_logs
end

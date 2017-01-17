class PomodoroLog < ApplicationRecord
  belongs_to :pomodoro
  belongs_to :task
end

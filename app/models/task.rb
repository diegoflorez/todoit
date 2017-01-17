class Task < ApplicationRecord
  belongs_to :user
  has_many :pomodoro_logs
  has_many :pomodoros, through: :pomodoro_log
  has_and_belongs_to_many :contexts
  has_and_belongs_to_many :projects
end

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  #Associations
  has_many :tasks
  has_many :pomodoros
  has_many :projects
  has_many :contexts
end

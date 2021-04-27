class User < ActiveRecord::Base
    has_many :workout_sessions
    has_many :measurement_logs
    

  end
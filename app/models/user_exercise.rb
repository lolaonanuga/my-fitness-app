class UserExercise < ActiveRecord::Base
    belongs_to :workout_session
    has_one :exercise
  end
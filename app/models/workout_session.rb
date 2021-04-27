class WorkoutSession < ActiveRecord::Base
    belongs_to :user
    has_many :user_exercises
    has_one :program_workout
  end
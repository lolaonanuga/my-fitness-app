class ProgramExercise < ActiveRecord::Base
    belongs_to :program_day
    has_one :exercise
  end
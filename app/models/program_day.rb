class ProgramDay < ActiveRecord::Base
    belongs_to :program
    has_many :program_exercises
  end
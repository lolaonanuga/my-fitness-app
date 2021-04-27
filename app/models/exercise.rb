class Exercise < ActiveRecord::Base
    belongs_to :body_part
    belongs_to :exercise_category
    has_many :variations 
  end
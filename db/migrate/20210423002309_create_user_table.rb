class CreateUserTable < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :name
      t.integer :target_weight
      t.integer :target_waist
      t.integer :target_hips
      t.timestamps
    end

    create_table :programs do |t|
      t.string :title
      t.datetime :start_date
      t.datetime :end_date
      t.string :focus
      t.timestamps
    end

    create_table :program_days do |t|
      t.integer :day
      t.integer :program_id
    end

    create_table :workout_sessions do |t|
      t.integer :user_id
      t.integer :program_day_id
      t.datetime :duration
      t.timestamps
    end

    create_table :exercises do |t|
      t.string :name
      t.integer :body_part_id
      t.integer :category_id
    end

    create_table :variations do |t|
      t.string :name
      t.integer :exercise_id
    end


    create_table :user_exercises do |t|
      t.integer :exercise_id
      t.integer :workoust_session_id
    end

    create_table :sets do |t|
      t.integer :reps
      t.integer :weight
      t.integer :user_exercise_id
    end

    create_table :exercise_categories do |t|
      t.string :name
    end

    create_table :body_parts do |t|
      t.string :name
    end

    create_table :program_exercises do |t|
      t.integer :exercise_id
      t.integer :program_day_id
      t.integer :sets
      t.integer :reps
    end

    create_table :measurement_logs do |t|
      t.integer :user_id
      t.integer :waist
      t.integer :hips
      t.integer :weight
      t.timestamps
    end


  end
end

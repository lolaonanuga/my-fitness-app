class ApplicationController < ActionController::Base
    before_action :set_current_instance_variables


    def set_current_instance_variables
        @current_user = User.first
        @current_program = Program.find do |prog|
          Time.zone.today.between?(prog.start_date, prog.end_date)
        end
    end
end

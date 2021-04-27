class ProgramsController < ApplicationController

  def create
    Program.create(

    )
  end

  def new
    render :new
  end

  def show
  end


end
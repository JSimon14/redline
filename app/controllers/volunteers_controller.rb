class VolunteersController < ApplicationController

  def index

  end

  def new
    @volunteer = Volunteer.new
  end

  def create
    @volunteers = Volunteer.all
    @volunteer = Volunteer.create(volunteer_params)
  end

  private

  def volunteer_params
    params.require(:volunteer).permit(:email, :first_name, :last_name, :phone)
  end
end

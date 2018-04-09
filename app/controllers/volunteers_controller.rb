class VolunteersController < ApplicationController

  def index

  end

  def new
    @volunteer = Volunteer.new
  end

  def create
    @volunteers = Volunteer.all
    @volunteer = Volunteer.create(volunteer_params)
    respond_to do |format|
      @errorFirstName = []
      @errorLastName = []
      @errorEmail = []
      @errorPhone = []
      @successMessage = []
      if @volunteer.save
        format.js
        @successMessage = "Success! Thank you!"
      else
        format.js {render :error}
        if (@volunteer.errors.messages[:first_name] != nil)
          @errorFirstName.push(@volunteer.errors.messages[:first_name][0].to_s.capitalize)
        end
        if (@volunteer.errors.messages[:last_name] != nil)
          @errorLastName.push(@volunteer.errors.messages[:last_name][0])
        end
        if (@volunteer.errors.messages[:email] != nil)
          @errorEmail.push(@volunteer.errors.messages[:email][0].to_s.capitalize)
        end
        if (@volunteer.errors.messages[:phone] != nil)
          @errorPhone.push(@volunteer.errors.messages[:phone][0])
        end
      end
    end
  end

  private

  def volunteer_params
    params.require(:volunteer).permit(:email, :first_name, :last_name, :phone)
  end
end

class WelcomeController < ApplicationController
  def index
    Admission.unset_current_user
  end

  def check
    if params[:admin][:email] == 'admin@abc.com' && params[:admin][:password] == "123456"
      Admission.set_current_user
      redirect_to controller: 'students', action: 'new'
    else
      redirect_to action: 'index'
    end

  end
end

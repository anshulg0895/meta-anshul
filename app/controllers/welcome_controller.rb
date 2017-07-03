class WelcomeController < ApplicationController
  def index
    
  end

  def check
    if params[:admin][:email] == 'admin@abc.com' && params[:admin][:password] == "123456"
      redirect_to controller: 'students', action: 'new'
    else
      redirect_to action: 'index'
    end
  end
end

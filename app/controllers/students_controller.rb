class StudentsController < ApplicationController
  def new
    if Admission.current_user == false
      redirect_to :controller=> "welcome", :action=> "index"
    end
  end

  def index
    if Admission.current_user == true
      @students = Admission.all
    else
      redirect_to :controller=> "welcome", :action=> "index"
    end
  end

  def create
    @admin = Admission.new(name: params[:student][:name], dob: params[:student][:dob], city: params[:student][:city], reg_no: params[:student][:regno])
    @admin.save
    redirect_to action: "new"
  end

  def show
    if Admission.current_user == true
      @admin = Admission.find(params[:id])
    else
      redirect_to :controller=> "welcome", :action=> "index"
    end
  end

end

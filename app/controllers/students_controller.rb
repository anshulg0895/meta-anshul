class StudentsController < ApplicationController
  def new
    if Admission.current_user == false
      redirect_to :controller=> "welcome", :action=> "index"
    end
  end

  def index
    if Admission.current_user == true
      @admissions = Admission.all.order(:created_at)
    else
      redirect_to :controller=> "welcome", :action=> "index"
    end
  end

  def create
    @admission = Admission.new(name: params[:student][:name], dob: params[:student][:dob], city: params[:student][:city], reg_no: params[:student][:regno])
    @admission.save
    redirect_to action: "new"
  end

  def show
    if Admission.current_user == true
      @admission = Admission.find(params[:id])
    else
      redirect_to :controller=> "welcome", :action=> "index"
    end
  end

  def destroy
    @admission = Admission.find(params[:id])
    @admission.destroy
    redirect_to students_path
  end

  def edit
    @admission = Admission.find(params[:id])
  end

  def update
    @admission = Admission.find(params[:id])
    if @admission.update(name: params[:admission][:name], dob: params[:admission][:dob], city: params[:admission][:city], reg_no: params[:admission][:reg_no])
      redirect_to action: "index"
    else
      render 'edit'
    end
  end

end

class StudentsController < ApplicationController
  def new
  end

  def index
    @students = Admission.all
  end

  def create
    @admin = Admission.new(name: params[:student][:name], dob: params[:student][:dob], city: params[:student][:city], reg_no: params[:student][:regno])
    @admin.save
    redirect_to action: "new"
  end

  def show
    @admin = Admission.find(params[:id])
  end

end

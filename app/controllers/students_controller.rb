class StudentsController < ApplicationController
  
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
  end
  
  def create
    #Student.create(first_name: params[:student][:first_name], last_name: params[:student][:last_name])
    #session[:params_info] = params.inspect 
    session[:params_hash] = params
    redirect_back fallback_location: students_path
  end

end

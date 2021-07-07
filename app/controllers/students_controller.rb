class StudentsController < ActionController::Base

  
  
  def show
    @student = Student.find(params[:id])
  end 

  def new 
    @student = Student.new
  end

  def edit
    @student = Student.find(params[:id])
  end

  def create
    @student = Student.new(students_params)
    @student.save
    redirect_to @student
  end

  def update
    @student = Student.find(params[:id])
    @student.update(students_params)
    redirect_to @student
  end

  private 

  def students_params
    params.require(:student).permit!
  end
end
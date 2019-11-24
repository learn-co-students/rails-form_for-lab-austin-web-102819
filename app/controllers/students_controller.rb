class StudentsController < ApplicationController
    def show
        @student= Student.find(params[:id])
    end

    def new
        @student= Student.new
    end

    def create
        @student= Student.new(student_params)
        @student.save
        redirect_to student_path(@student)
    end

    def edit
        # find the student that matches the id in the params and set it equal to instance variable
        @student= Student.find(params[:id])

    end

    def update
        # Find the student that matches the id in the params hash and set it equal to instance variable @student
        @student= Student.find(params[:id])
        # Update this @student to have the attributes entered in the edit.html form
        @student.update(student_params)
        # Redirect to the show student path
        redirect_to student_path(@student)
    end

    private
    def student_params
        params.require(:student).permit!
      end
    
end
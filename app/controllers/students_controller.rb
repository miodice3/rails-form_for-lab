#Create controller files for school_classes and students. 
#Build out the new, create, show, edit, and update actions 
#in each of the controllers.

class StudentsController < ApplicationController
    
    def index
        @students = Student.all
    end

    def new
    end

    def create
        #byebug
        @student = Student.new
        @student.first_name = params[:student_first_name]
        @student.last_name = params[:student_last_name]
        @student.save
        #byebug
        redirect_to student_path(@student)
    end

    def show
        @student = Student.find_by_id(params[:id])
    end

    def edit
        @student = Student.find_by_id(params[:id])
        #byebug
    end

    def update
        #byebug
        @student = Student.find_by_id(params[:id])
        @student.update(first_name: params[:student][:first_name])
        @student.update(last_name: params[:student][:last_name])
        @student.save
        redirect_to student_path(@student)
    end

end
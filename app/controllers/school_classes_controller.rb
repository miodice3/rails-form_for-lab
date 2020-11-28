class SchoolClassesController < ApplicationController


    def index
        @school = SchoolClass.all
    end

    def new
    end

    def create
        #byebug
        @school = SchoolClass.new
        @school.title = params[:school_class_title]
        @school.room_number = params[:school_class_room_number]
        @school.save
        #byebug
        redirect_to school_class_path(@school)
    end

    def show
        @school = SchoolClass.find_by_id(params[:id])
    end

    def edit
        @school = SchoolClass.find_by_id(params[:id])
        #byebug
    end

    def update
        #byebug
        @school = SchoolClass.find_by_id(params[:id])
        @school.update(room_number: params[:school_class][:room_number])
        @school.update(title: params[:school_class][:title])
        @school.save
        #byebug
        redirect_to school_class_path(@school)
    end



end

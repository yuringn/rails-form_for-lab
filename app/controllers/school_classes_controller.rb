class SchoolClassesController < ApplicationController
    def show
        @school = SchoolClass.find(params[:id])
    end

    def new
        @school = SchoolClass.new
    end

    def create
        @school = SchoolClass.create(school_params)
        redirect_to school_class_path(@school)
    end

    def edit
        @school = SchoolClass.find(params[:id])
    end

    def update
        edit
        @school.update(school_params)
        redirect_to school_class_path(@school)
    end

    private

    def school_params
        params.require(:school_class).permit(:title, :room_number)
    end

end

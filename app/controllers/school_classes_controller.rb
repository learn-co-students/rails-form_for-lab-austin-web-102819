class SchoolClassesController < ApplicationController
    def new
        @class= SchoolClass.new
    end

    def create
        #create a new class
        @class= SchoolClass.new(school_class_params)
        # Get the title of the clas from params[:title] and save it to @class
        # save the object to the DB
        @class.save
        #Redirect user to the newl created page
        redirect_to school_class_path(@class)
    end

    def show
        @class = SchoolClass.find(params[:id])
    end

    def edit
        @class= SchoolClass.find(params[:id])
    end

    def update
        # Look for the SchoolClass object with the id in the params and set it equal to instance variable
        @class= SchoolClass.find(params[:id])
        #update this object with the data input into the edit form
        @class.update(school_class_params)
        # redirect to the updated page:
        redirect_to school_class_path(@class)
    end

    private
    def school_class_params
        params.require(:school_class).permit!
      end
end
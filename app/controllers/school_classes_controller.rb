class SchoolClassesController < ActionController::Base

     
      
      def show
        @school_class = SchoolClass.find(params[:id])
      end 
    
      def new 
        @school_class = SchoolClass.new
      end
    
      def edit
        @school_class = SchoolClass.find(params[:id])
      end
    
      def create
        @school_class = SchoolClass.new(sc_params)
        @school_class.save
        redirect_to @school_class
      end
    
      def update
        @school_class = SchoolClass.find(params[:id])
        @school_class.update(sc_params)
        redirect_to @school_class
      end
    
      private 
    
      def sc_params
        params.require(:school_class).permit!
      end

end
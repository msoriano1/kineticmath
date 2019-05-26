class YearlevelsController < ApplicationController 
    before_action :set_yearlevel, except: [:index, :new]
    #activates helper method before any function
    def index
        @yearlevels = Yearlevel.all
    end
    
    def show

    end
    
    def new
        @yearlevel = Yearlevel.new
    end
    
    def create
        @yearlevel = Yearlevel.new(yearlevel_params)
        if @yearlevel.save
            redirect_to yearlevel_path, notice: "Year level successfully added."
        else
            render :action => 'new'
        end
    end
    
    
    private
    def set_yearlevel
        @yearlevel = Yearlevel.find_by(id: params[:id])
        if @yearlevel.nil?
            redirect_to root_path, alert: "Page not found"
        end
    end
    
    def yearlevel_params
        params.require(:yearlevel).permit!
    end

    #helper method to find current year level
end

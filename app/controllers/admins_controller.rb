class AdminsController < ApplicationController
    def index
        @admins = Admin.all
    end
    
    def show
        @admin = Admin.find params[:susername]
    end
    
    def new
        @admin = Admin.new
    end

    def edit   
        @admin = Admin.find_by(id: params[:admin])
        if @admin.nil?
            redirect_to admins_path, alert: "Admin not found." and return
        else
            render "admins/edit" 
        end
    end
    
    def update
        @admin = Admin.find_by(id: params[:admin][:id])
        if @admin.nil?
            redirect_to admins_path, alert: "Admin not found." and return
        else 
            @admin.ausername = params[:admin][:ausername]
            @admin.encrypted_password = params[:admin][:encrypted_password]
            @admin.save!

            redirect_to admins_path, notice: "Admin successfully edited."
        end
    end

    def create
        @admin = Admin.new params[:teacher]
        if @admin.save
            redirect_to :action => 'show', :id => @admin.id
        else
            render :action => 'new'
        end
    end

    private

    def admin_params
        params.require(:admin).permit(:ausername, :salt, :encrypted_password, :password_confirmation)
      end
      
      def set_admin
        @admin = Admin.find_by(id: params[:id])
        if @admin.nil?
              redirect_to admins_path, alert: "Admin not found." and return
          end
      end
end

class TeachersController < ApplicationController
    # before_action :set_teacher, only: [:update, :edit, :destroy, :show]
    #before_filter :authorize_admin, only: :create
    
    def index
        @teachers = Teacher.all
    end
    
    def show
        @teacher = Teacher.find params[:susername]
    end
    
    def new
        @teacher = Teacher.new
    end

    def edit   
        @teacher = Teacher.find_by(id: params[:teacher])
        if @teacher.nil?
            redirect_to teachers_path, notice: "Teacher not found." 
        else
            render "teachers/edit" 
        end
    end

    def destroy
        @teacher = Teacher.find_by(id: params[:teacher][:id])
        redirect_to teachers_path, notice: "Teacher not found." if @teacher.nil?

        if @teacher.status == true
          @teacher.status = false
        else
          @teacher.status = true
        end
        
        if @teacher.save
            redirect_to teachers_path, notice: "Teacher successfully updated."
        end
    end

    def update
        @teacher = Teacher.find_by(id: params[:teacher][:id])
        if @teacher.nil?
            redirect_to teachers_path, notice: "teacher not found." 
        else 
            @teacher.pusername = params[:teacher][:pusername]
            @teacher.firstname = params[:teacher][:firstname]
            @teacher.lastname = params[:teacher][:lastname]
            @teacher.save!

            redirect_to teachers_path, notice: "Teacher successfully edited."
        end
    end
    
    def create
        @teacher = Teacher.new(teacher_params)
        if @teacher.save
            redirect_to teachers_path, notice: "Teacher successfully added."
        else
            render :action => 'new'
        end
    end
    
    private
    def teacher_params
      params.require(:teacher).permit!
    end
    
    def set_teacher
      @teacher = Teacher.find_by(id: params[:id])
      redirect_to teachers_path, notice: "Teacher not found." if @teacher.nil?
    end
    
    def authorize_admin
    return unless !current_user.admin?
    redirect_to root_path, alert: 'Admins only!'
    end
end

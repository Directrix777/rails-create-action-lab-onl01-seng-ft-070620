class SchoolClassesController < ApplicationController
  
    def index
      @school_classes = SchoolClass.all
    end
  
    def show
      @school_class = SchoolClass.find(params[:id])
    end
  
    def new
      def new
        @school_class = SchoolClass.new
      end
    end
  
    def create
      @school_class = SchoolClass.create(title: params[:school_class][:title], last_name: params[:school_class][:title])
      redirect_to student_path(@student.id)
    end
  
  end
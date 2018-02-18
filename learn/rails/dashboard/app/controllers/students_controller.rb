class StudentsController < ApplicationController
  def index
  end

  def new
    @dojo_list_select = Dojo.get_dojos_list
  end

  def create
    @new_student = Student.new(student_params)
    if @new_student.save
    else
    end
    redirect_to '/dojos'
  end
  def new
    @dojo_specific = Dojo.find(params[:id]).branch
    @dojo_not_specific = Dojo.all.where.not(id: Dojo.find(params[:id]))
    @dojo_id = Dojo.find(params[:id])
  end
  def show
  end

  def edit
    @dojos = Dojo.find(params[:id])
    @student = Student.find(params[:student_id])
    @dojo_belongs = Dojo.find(params[:id])
    @dojo_exclude = Dojo.all.where.not(id: Dojo.find(params[:id]))
  end

  def update
    @student_update = Student.find(params[:student_id])
    if @student_update.update(student_param_update)
      redirect_to '/dojos'
    else
    end
  end

  def destroy
  end

    def student_params
      params.require(:student).permit(:first_name, :last_name, :email, :dojo_id)
    end
    private
    def self.not_specific
      all.where_not(id: Dojo.find(params[:id]))
    end
    private
    def student_param_update
      params.require(:student_update).permit(:first_name, :last_name, :email, :dojo_id)
    end
end

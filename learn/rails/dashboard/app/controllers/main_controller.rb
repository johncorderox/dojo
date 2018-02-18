class MainController < ApplicationController
  def index
    @dojos = Dojo.all
    @dojo_count = Dojo.count
  end
  def show
    @dojo_show = Dojo.find(params[:id])
    @students_show = Dojo.find(params[:id]).students
  end
  def new
  end
  def edit
    @dojo_edit = Dojo.find(params[:id])
  end
  def update
    @dojos_update = Dojo.find(params[:id])

    if @dojos_update.update(dojo_params_update)
      redirect_to '/dojos'
    else
      flash[:errors] = @dojos_update.errors.full_messages
      redirect_to :back
    end
  end
  def create
    @new_dojo = Dojo.new(dojo_params)
    if @new_dojo.save
      redirect_to '/dojos'
    else
      flash[:errors] = @new_dojo.errors.full_messages
      redirect_to :back
    end
  end
  def destroy
    Dojo.find(params[:id]).destroy
    redirect_to '/dojos'
  end
  private
    def dojo_params
      params.require(:dojo).permit(:branch, :street, :city, :state)
    end
    private
      def dojo_params_update
        params.require(:dojo).permit(:branch, :street, :city, :state)
      end
end

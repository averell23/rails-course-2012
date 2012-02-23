class TodosController < ApplicationController

  # rescue_from ActiveRecord::RecordInvalid, :with => :sos

  def index
    @todos = Todo.not_done
  end

  
  def show
  end

  def new
    @todo = Todo.new
  end

  def create
    @todo = Todo.new(params[:todo])
    if(@todo.save)
      redirect_to todos_url
    else
      flash[:errors] = "Ooooooh something is wrong with this"
      render :new
    end
  end

  def update
    @todo = Todo.find(params[:id])
    @todo.update_attributes(params[:todo])
    redirect_to todos_url
  end

  protected

  def sos
    render :text => "Ooopsie"
  end

end

class TodosController < ApplicationController

  def index
    @todos = Todo.not_done
  end

  def new
    @todo = Todo.new
  end

  def create
    @todo = Todo.new(params[:todo])
    if(@todo.save)
      redirect_to todos_url
    else
      render :new
    end
  end

  def update
    @todo = Todo.find(params[:id])
    @todo.update_attributes(params[:todo])
    redirect_to todos_url
  end

end

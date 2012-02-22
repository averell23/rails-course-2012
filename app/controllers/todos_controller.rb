class TodosController < ApplicationController

  def index
    @todos = Todo.all
  end

  def new
    @todo = Todo.new(:description => "New Todo Item")
  end

  def create
    @todo = Todo.new(params[:todo])
    @todo.save!
    redirect_to todos_url
  end

  def update
    @todo = Todo.find(params[:id])
    @todo.update_attributes(params[:todo])
    redirect_to todos_url
  end

end

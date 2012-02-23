class TodosController < ApplicationController

  # rescue_from ActiveRecord::RecordInvalid, :with => :sos

  before_filter :find_todo, :only => [:show, :update]
  before_filter :find_user

  # GET /todos/
  def index
    @todos = @user.todos.not_done
  end

  # GET /todos/:id
  def show
  end

  # GET /todos/new
  def new
    @todo = @user.todos.build
  end

  # POST /todos/
  def create
    @todo = @user.todos.build(params[:todo])
    if(@todo.save)
      redirect_to user_todos_url(@user)
    else
      flash[:errors] = "Ooooooh something is wrong with this"
      render :new
    end
  end

  # PUT /todos/:id
  def update
    @todo.update_attributes(params[:todo])
    redirect_to user_todos_url(@user)
  end

  protected

  def find_todo
    @todo = Todo.find(params[:id])
  end

  def find_user
    @user = User.find(params[:user_id])
  end

  def sos
    render :text => "Ooopsie"
  end

end

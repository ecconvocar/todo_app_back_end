class TodoController < ApplicationController
  def show
    @todo = Todo.find_by_id(params["id"])
  end
  
  def new
  end
  
  def create
    t = Todo.new
    t.description = params['description']
    t.pomodoro_estimate = params['pomodoro_estimate']
    t.save
    redirect_to "/todo/show/#{ t.id }"
  end
  
  def edit
    @todo = Todo.find_by_id(params[:id])
  end
  
  def update
    t = Todo.find_by_id(params['id'])
    t.description = params['description']
    t.pomodoro_estimate = params['pomodoro-estimate']
    t.save
    redirect_to "/todo/show/#{t.id}"
  end
end

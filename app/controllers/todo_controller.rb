class TodoController < ApplicationController
  def show
    todo_id = params[:id]
    
    if todo_id == '1'
        @todo_description = "Make the tasks"
        @todo_pomodoro_estimate = 5

    elsif todo_id == '2'
        @todo_description = "Make calendar"
        @todo_pomodoro_estimate = 2
    elsif todo_id == '3'
        @todo_description = "Make shop"
        @todo_pomodoro_estimate = 3
    elsif todo_id == '4'
        @todo_description = "Make community"
        @todo_pomodoro_estimate = 4
    elsif todo_id == '5'
        @todo_description = "Make account"
        @todo_pomodoro_estimate = 4
    end
  end
end
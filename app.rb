require 'sinatra'
require_relative 'boot'
require_relative './models/todo'

  get "/?" do
    redirect "/todos"
  end

  # Get all of our todos
  get "/todos" do
    @todos = Todo.order_by(:created_at => :desc)
    erb :"todo/index"
  end

  # Add the todo to the database
  post "/todos" do
    if params[:todo][:content] != ''
      todo = Todo.new(params[:todo])
      todo.save
    end
    redirect "/todos"
  end

  # Updates the todo with id in the database
  put "/todos/:id" do
    todo = Todo.find(params[:id])
    if params[:todo] && params[:todo][:done]
      todo.completed_at = Time.now
      todo.done = true
    else
      todo.done = false
      todo.completed_at = nil
    end
    todo.save!
    redirect "/todos"
  end

  # Deletes the todo with id in the database
  delete '/todos/delete/:id' do
    todo = Todo.find(params[:id])
    todo.delete
    redirect '/todos'
  end

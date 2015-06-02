class UsersController < ApplicationController

  def index
    if params.length <=2
      display_users(User.all)

    elsif params.include?("first_name")
      specific_users = User.where("first_name LIKE (?)", "#{params[:first_name]}%")

      if specific_users.length < 1
        render text: "User(s) Not Found", status: 404
      else
        display_users(specific_users)
      end

    elsif params.include?("limit") && params.include?("offset")
      display_users(User.all.limit(params[:limit]).offset(params[:offset]))

    end
  end

  def delete
    if params[:action] == 'delete' && (User.exists?(params[:id])) == true
      user = User.find(params[:id])
      render text: "(#{user.id}) #{user.first_name} #{user.last_name} : DELETED"
      User.destroy(params[:id])
    else render text: "User Not Found ", status: 404
    end

  end

  def show
    if User.exists?(params[:id])
      show_user = User.find(params[:id])
      render text: "#{show_user.first_name} #{show_user.last_name}, #{show_user.age} y/o"
    else
      render text: "User Not Found", status: 404
    end
  end

  def create
    if params[:action] == 'create'
      new_user = User.create(first_name: params[:first_name], last_name: params[:last_name], age: params[:age])
      render text: "(#{new_user.id}) #{new_user.first_name} #{new_user.last_name} added to database."
    else
      render text: "Unknown Error", status: 500
    end
  end

  def display_users(passed_value)
      string_users = passed_value.map do |user|
        "(#{user.id}) #{user.first_name} #{user.last_name}, #{user.age} y/o"
        end
      render text: string_users.join('<p></p>')
  end


end

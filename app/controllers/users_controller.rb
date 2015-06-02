class UsersController < ApplicationController

  def index
    if params.length <=2
      all_users = User.all
      string_users = all_users.map do |user|
        "(#{user.id}) #{user.first_name} #{user.last_name}, #{user.age} y/o\n"
        end
      render text: string_users.join('</p><p>')

    else
      specific_users = User.where("first_name LIKE (?)", "#{params[:first_name]}%")

      if specific_users.length < 1
        render text: "User(s) Not Found", status: 404
      else
        string_users = specific_users.map do |user|
          "(#{user.id}) #{user.first_name} #{user.last_name}, #{user.age} y/o\n"
          end
        render text: string_users.join('</p><p>')
      end
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


end

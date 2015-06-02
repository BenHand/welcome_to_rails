class UsersController < ApplicationController

  def index
    all_users = User.all
    string_users = all_users.map do |user|
       "#{user.first_name} #{user.last_name}, #{user.age} y/o\n"
    end
    join = "_" * 20
    render text: "#{join}#{string_users.join(join)}"
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

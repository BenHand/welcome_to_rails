class UsersController < ApplicationController

  def index
    users = User.all

    render text: "testing"
  end

  def show
  end
end

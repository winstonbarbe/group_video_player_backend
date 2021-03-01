class Api::UsersController < ApplicationController
  before_action :current_user, except: [:create]

  def create
    user = User.new(
      email: params[:email],
      password: params[:password],
      password_confirmation: params[:password_confirmation]
    )
    if user.save
      render json: { message: "User created successfully" }, status: :created
    else
      render json: { errors: user.errors.full_messages }, status: :bad_request
    end
  end

  def show
    @user = User.find(current_user.id)
    render "show.json.jb"
  end



end

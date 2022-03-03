class UsersController < ApplicationController
  before_action :authenticate_user, except: [:create]
  def create
    user = User.new(
      display_name: params[:display_name],
      email: params[:email],
      password: params[:password],
      password_confirmation: params[:password_confirmation],
      profile_picture: params[:profile_picture]
    )
    if user.save
      render json: { message: "User created successfully" }, status: :created
    else
      render json: { errors: user.errors.full_messages }, status: :bad_request
    end
  end

  def show
    render json: User.find(current_user.id)
  end

  def update
    user = User.find(current_user.id)
    user.display_name = params[:display_name] || user.display_name
    user.email = params[:email] || user.email
    user.password = params[:password] || user.password
    user.password_confirmation = params[:password_confirmation] || user.password_confirmation
    user.profile_picture = params[:profile_picture] || user.profile_picture
    if user.save
      render json: user
    else
      render json: {errors: user.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def destroy
    User.destroy(current_user.id)
    render json: {message: "User has been deleted."}
  end
end

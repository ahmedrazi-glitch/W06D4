class UsersController < ApplicationController 
  def index
      render jason: User.all
  end
  def create
      User.create!(user_params)
      if user.save
        render json: user
      else
        render json: user.errors.full_messages, status: :unprocessable_entity
      end
  end

  def destroy
    User.find(params[:id]).destroy
  end

  def show
    render json: User.find(params[:id]) 
  end

  def update
    User.find(params[:id]).patch(user_params)
    if user.save
      render json: user
    else
      render json: user.errors.full_messages, status: :unprocessable_entity
    end
  end


  private

  def user_params
    params.require(:user).permit(:name) 
  end
 
end
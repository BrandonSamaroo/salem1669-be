class UsersController < ApplicationController

  # GET /users
  def index
    users = User.all

    return render json: UserSerializer.new(users).serializable_hash
  end

  # GET /users/1
  def show
    user = User.find(1)
    return render json: UserSerializer.new(user).serializable_hash
  end

  # POST /users
  def create

  end

  # PATCH/PUT /users/1
  def update

  end

  # DELETE /users/1
  def destroy

  end

  private
    def user_params
      params.require(:user).permit(:name)
    end
end

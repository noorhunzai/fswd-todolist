module Api
  class UsersController < ApplicationController
    def create
      user = User.new(user_params)

      if user.save
        render json: { success: true, id: user.id }
      else
        render json: { success: false }
      end
    end

    private

    def user_params
      params.require(:user).permit(:name, :email, :password)
    end
  end
end

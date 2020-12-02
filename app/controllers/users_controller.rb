class UsersController < ApplicationController
    def index
        users = User.all
        render json: users, except:[:created_at, :updated_at],
        include:{:boards => {only: [:id, :theme, :difficulty, :score]}}
    end

    def create
        user = User.create(user_params)
    end

    def show
        user = User.find_by(params[:id])
        render json: user, except:[:created_at, :updated_at]
    end

    private

    def user_params
        params.permit(:username)
    end
end

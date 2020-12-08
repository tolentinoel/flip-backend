class UsersController < ApplicationController
    skip_before_action :verify_authenticity_token
    def index
        users = User.all
        render json: users, except:[:created_at, :updated_at],
        include:{:boards => {only: [:id, :theme, :difficulty, :moves]}}
    end

    def show
        user = User.find_by(id: params[:id])
        render json: user, except:[:created_at, :updated_at],
        include:{:boards => {only: [:id, :theme, :difficulty, :moves]}}
    end

    def create
        user = User.find_or_create_by(username: params[:username])
        render json: user, except:[:created_at, :updated_at]
    end

    private

    def user_params
        params.permit(:username, :board_id)
    end
end

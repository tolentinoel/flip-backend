class BoardsController < ApplicationController
    skip_before_action :verify_authenticity_token
    def index
        boards = Board.all
        render json: boards, except:[:created_at, :updated_at]
    end

    def show
        board = Board.find_by(id: params[:id])
        render json: board, except:[:created_at, :updated_at]
    end
    def create
        user = User.find_by(id: params[:user_id])
        board = Board.create(board_params)
        render json: board, except:[:created_at, :updated_at]
    end

    def update
        board = Board.find_by(id: params[:id])
        board.update(board_params)
        render json: board, except:[:created_at, :updated_at]
    end

    private

    def board_params
        params.permit(:theme, :difficulty, :moves, :user_id)
    end
end

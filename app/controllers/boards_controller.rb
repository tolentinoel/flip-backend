class BoardsController < ApplicationController

    def create
        board = Board.create(board_params)
        render json: board, except:[:created_at, :updated_at]
    end

    private

    def board_params
        params.permit(:theme, :difficulty, :score, :user_id)
    end
end

class PiecesController < ApplicationController
  def index
    pieces = Piece.all 
    render json: pieces
  end

  def update
    binding.pry
    game = Game.find_by_id(params[:id]).pieces
  end
end

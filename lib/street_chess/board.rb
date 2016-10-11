module StreetChess
  class Board
    attr_accessor :game_board

    def initialize
      @game_board = Array.new(8) {Array.new(8)}
    end
  end
end

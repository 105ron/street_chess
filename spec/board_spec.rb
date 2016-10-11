require 'spec_helper'

module StreetChess
  describe Board do
    subject(:board) {Board.new}

    it {expect(board).to be_instance_of Board}

    describe '#new' do
      context 'when a new game_board is created' do
        it 'should be an array' do
          expect(board.game_board).to be_kind_of Array
        end

        it 'should have 8 rows' do
          expect(board.game_board.length).to eql 8
        end

        it 'should have 8 columns in each row' do
          expect(board.game_board[0].length).to eql 8
        end
      end
    end
  end
end

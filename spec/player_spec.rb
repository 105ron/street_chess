require 'spec_helper'

module StreetChess
  describe Player do
    subject(:player) {Player.new("Homeboy", colour)}
    let (:player2) {Player.new("Austin", colour2)}
    let(:colour) {:black}
    let(:colour2) {:white}

    it {expect(player).to be_instance_of Player}

    describe '#new' do
      context 'when a player called Homeboy enters their name' do
        it 'should set the name to HomeBoy' do
          expect(player.name).to eql "Homeboy"
        end
      end

      context 'when a player called Austin enters their name' do
        it 'should set the name to Austin' do
          expect(player2.name).to eql "Austin"
        end
      end

      context 'when a player chooses a colour' do
        context 'when black is the chosen colour' do
          it 'should set the player colour to black' do
            expect(player.colour).to eql :black
          end
        end

        context 'when white is the chosen colour' do
          it 'should set the player colour to white' do
            expect(player2.colour).to eql :white
          end
        end
      end
    end
  end
end

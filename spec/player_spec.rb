require 'spec_helper'

module StreetChess
  describe Player do
    subject(:player) {Player.new(name)}
    let(:name) {"Homeboy"}

    it {expect(player).to be_instance_of Player}

    describe '#new' do
      context 'when a player called Homeboy enters their name' do
        it 'should set the name to HomeBoy' do
          expect(player.name).to eql "Homeboy"
        end
      end

      context 'when a player called Austin enters their name' do
        let (:player2) {Player.new("Austin")}
        it 'should set the name to Austin' do
          expect(player2.name).to eql "Austin"
        end
      end
    end
  end
end

require './lib/connect_four'

describe Game do
  describe '#ask_for_input' do
    subject(:new_game) { described_class.new }

    context 'it is a Numeric' do

      before do
        $stdin = StringIO.new("1")
      end

      after do
        $stdin = STDIN
      end

      it 'returns the input as an integer' do
        expect(new_game.ask_for_input).to eq(1)
      end

    end

    context 'it is not a Numeric' do
      before do
        $stdin = StringIO.new("g")
      end

      after do
        $stdin = STDIN
      end

      it 'returns the input as zero' do
        expect(new_game.ask_for_input).to eq(0)
      end
    end

  end
end

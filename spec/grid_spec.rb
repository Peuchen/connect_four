require './lib/grid'

describe Grid do
  describe '#update_grid' do

    subject(:new_grid) { described_class.new }
    let(:player) { double('player', disk: 'X')}

    context 'the grid is empty' do
      it 'should place the disk on the bottom row' do
        new_grid.update_grid(player, 3)
        cell = new_grid.grid[-1][3]
        expect(cell).to eq("|X|")
      end

    end

    context 'the bottom row for a specific position is occupied' do
      before do
        new_grid.update_grid(player, 3)
      end

      it 'should place the disk on the second-to-bottom row' do
        new_grid.update_grid(player, 3)
        cell = new_grid.grid[-2][3]
        expect(cell).to eq("|X|")
      end

    end

  end

  describe '#free?' do
    subject(:new_grid) { described_class.new }
    let(:player) { double('player', disk: 'X')}

    it 'should return true' do
      output = new_grid.free?(4)
      expect(output).to be(true)
    end

    it 'should return an error' do
      expect(STDOUT).to receive(:puts).with("This is not a valid column number.")
      new_grid.free?(8)
    end

  end

  describe '#win?' do
    subject(:new_grid) { described_class.new }

    context "four X'es in a row" do
      before do
        new_grid[0][0] = "|X|"
        new_grid[0][1] = "|X|"
        new_grid[0][2] = "|X|"
        new_grid[0][3] = "|X|"
      end

      it 'should return true' do
        expect(new_grid.win?).to be(true)
      end
    end

  end
end
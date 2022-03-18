require_relative '../lib/tile_set'

describe 'A tile set' do

  describe '::generate' do

    it 'returns an array of 9 tiles by default' do
      tiles = TileSet.generate
      expect(tiles.size()).to eq(9) 
    end

    it 'returns an array of tiles of a specified length' do
      amount = 3
      tiles = TileSet.generate(amount)
      expect(tiles.size()).to eq(3)
    end

    it 'returns an array of tiles whose values increase from 1, by 1' do
      tiles = TileSet.generate
      expect(tiles[0].value).to eq(tiles[1].value - 1)
      expect(tiles[1].value).to eq(tiles[2].value - 1)
      expect(tiles[2].value).to eq(tiles[3].value - 1)
      expect(tiles[3].value).to eq(tiles[4].value - 1)
      expect(tiles[4].value).to eq(tiles[5].value - 1)
      expect(tiles[5].value).to eq(tiles[6].value - 1)
      expect(tiles[6].value).to eq(tiles[7].value - 1)
      expect(tiles[7].value).to eq(tiles[8].value - 1)
    end

  end

end

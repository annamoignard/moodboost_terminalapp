require 'tty-prompt'
require_relative '../lib/track'
require_relative '../lib/moods_repo'

describe 'Track' do
  it '#to_arr turns track into array' do
    track = Track.new('monday', 'happy')
    actual = track.to_arr
    expect(actual).to be_a(Array)
  end
  it 'Convert turns array of objects to array of hashes' do
    moods = read_moods
    actual = Track.convert(moods, :hash)
    expect(actual.first).to be_a(Hash) # grabbing the first hash and passing the Hash class
    expect(actual.last).to be_a(Hash) # checks the last item
  end
end

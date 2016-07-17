require 'caesar_cipher'

describe '#caesar_cipher' do
  it 'encrypts using caesar cipher' do
    expect(caesar_cipher("What a string!", 5)).to eq("Bmfy f xywnsl!")
  end
end

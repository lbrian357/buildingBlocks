require 'caesar_cipher'

describe '#caesar_cipher' do
  context 'when the shift factor is 0' do
    it 'returns original string' do
      expect(caesar_cipher('What a string!', 0)).to eq('What a string!')
    end
  end

  context 'when the shift factor is single digit' do
    it 'encrypts using caesar cipher' do
      expect(caesar_cipher("What a string!", 5)).to eq("Bmfy f xywnsl!")
    end
  end

  context 'when the shift factor is 27' do
    it 'returns original string' do
      expect(caesar_cipher('What a string!', 0)).to eq('What a string!')
    end
  end

  context 'when the shift fastor is above 26' do
    it 'returns original string' do
      expect(caesar_cipher('What a string!', 31)).to eq('Bmfy f xywnsl!')
    end
  end

  context 'when the shift factor is greater than 51' do
  it 'wraps from z to a and encrypts' do
    expect(caesar_cipher('What a string!', 57)).to eq('Bmfy f xywnsl!')
  end
end

  context 'when there are different case' do
    it 'returns encryption that keep the same case' do
      expect(caesar_cipher('WhAt A sTrInG!', 5)).to eq('BmFy F xYwNsL!')
    end
  end

  context 'when the shift factor is negative' do
    it 'returns encryption starting from -1 => z' do
      expect(caesar_cipher('What a string!', -21)).to eq('Bmfy f xywnsl!') 
    end
  end
end

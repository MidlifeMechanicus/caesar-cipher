# spec/cipher_spec.rb

require './lib/main/cipher'

describe Cipher do
  describe '#encode' do
    it "returns 'YZA'" do
      cipher = Cipher.new
      allow(cipher).to receive(:gets).and_return('XYZ', '1')
      expect(cipher.encode).to eq('YZA')
    end
  end

  describe '#get_string' do
    it 'returns Hello World as an input' do
      cipher = Cipher.new
      allow(cipher).to receive(:gets).and_return('Hello World')
      expect(cipher.get_string).to eq('Hello World')
    end
  end

  describe '#get_shift' do
    it 'returns 1' do
      cipher = Cipher.new
      allow(cipher).to receive(:gets).and_return('1')
      expect(cipher.get_shift).to eq(1)
    end
    it 'returns 10' do
      cipher = Cipher.new
      # cipher.stub(:gets).and_return("Hello World")
      allow(cipher).to receive(:gets).and_return('10')
      expect(cipher.get_shift).to eq(10)
    end
    it 'returns 1' do
      cipher = Cipher.new
      # cipher.stub(:gets).and_return("Hello World")
      allow(cipher).to receive(:gets).and_return('27')
      expect(cipher.get_shift).to eq(1)
    end
  end

  describe '#get_cipher' do
    it "returns 'cbd'" do
      cipher = Cipher.new
      expect(cipher.get_cipher('abc', 1)).to eq('bcd')
    end

    it "returns 'yza'" do
      cipher = Cipher.new
      expect(cipher.get_cipher('xyz', 1)).to eq('yza')
    end
  end
end

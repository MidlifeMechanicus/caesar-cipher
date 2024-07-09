#spec/cipher_spec.rb

require "./lib/main/cipher"

describe Cipher do
  describe "#get_string" do
    it "returns Hello World as an input" do
      cipher = Cipher.new
      # cipher.stub(:gets).and_return("Hello World")
      allow(cipher).to receive(:gets).and_return("Hello World")
      expect(cipher.get_string).to eq("Hello World")
    end
  end

  describe "#get_shift" do
    it "returns 1" do
      cipher = Cipher.new
      # cipher.stub(:gets).and_return("Hello World")
      allow(cipher).to receive(:gets).and_return("1")
      expect(cipher.get_shift).to eq(1)
    end
    it "returns 10" do
      cipher = Cipher.new
      # cipher.stub(:gets).and_return("Hello World")
      allow(cipher).to receive(:gets).and_return("10")
      expect(cipher.get_shift).to eq(10)
    end
    it "returns 1" do
      cipher = Cipher.new
      # cipher.stub(:gets).and_return("Hello World")
      allow(cipher).to receive(:gets).and_return("27")
      expect(cipher.get_shift).to eq(1)
    end
  end

  describe "#add" do
    it "returns the sum of two numbers" do
      cipher = Cipher.new
      expect(cipher.add(5, 2)).to eq(7)
    end
  end
end
require 'caesar-cipher.rb'

describe "#caesar_cipher" do
    it "accepts a string" do
        expect(caesar_cipher("hello", 2)).to eql("jgnnq")
    end

    it "is case insensitive" do
        expect(caesar_cipher("Hello", 2)).to eql("Jgnnq")
    end

    it "accepts non-alphanumeric values" do
        expect(caesar_cipher("Hello!", 2)).to eql("Jgnnq!")
    end

    it "accepts extremely large numbers" do
        expect(caesar_cipher("Christian", 6559)).to eql("Joypzaphu")
    end

    it "accepts spaces" do
        expect(caesar_cipher("What's up?", 6)).to eql("Cngz'y av?")
    end

    it "accepts negative numers" do
        expect(caesar_cipher("Shannon", -7)).to eql("Latgghg")
    end
end
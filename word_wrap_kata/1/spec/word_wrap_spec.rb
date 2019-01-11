require 'word_wrap'

describe "The wrap function" do
    it "returns empty string when called with nothing" do
        expect(wrap("", 1)).to eq("")
    end

    it "returns the word if shorter than the length" do
        expect(wrap("word", 5)).to eq("word")
    end

    it "splits a long word on the length column" do
        expect(wrap("longword", 4)).to eq("long\nword")
    end

    it "splits a really long word on the column" do
        expect(wrap("longlongword", 4)).to eq("long\nlong\nword")
    end

    it "splits a word on a whitespace" do
        expect(wrap("long word", 5)).to eq("long\nword")
    end

    it "splits a whitespace that is after the column" do
        expect(wrap("long word", 4)).to eq("long\nword")
    end

    it "splits early when the space is before column" do
        expect(wrap("long word", 6)).to eq("long\nword")
    end

    it "keeps as many words on the line as possible" do
        expect(wrap("long long word", 10)).to eq("long long\nword")
    end
end
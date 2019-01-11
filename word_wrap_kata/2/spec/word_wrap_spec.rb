require 'word_wrap'

describe "The wrap function" do
    it "returns empty string when called with nothing" do
        expect(WordWrap.wrap("", 0)).to eq ""
    end

    it "does not wrap a word shorter than the length" do
        expect(WordWrap.wrap("word", 6)).to eq "word"
    end

    it "splits a long word on the length column" do
        expect(WordWrap.wrap("longword", 4)).to eq "long\nword"
    end

    it "splits a really long word on the length column" do
        expect(WordWrap.wrap("longlongword", 4)).to eq "long\nlong\nword"
    end

    it "splits a word on a whitespace" do
        expect(WordWrap.wrap("long word", 5)).to eq "long\nword"
    end

    it "splits a whitespace that is after the column" do
        expect(WordWrap.wrap("long word", 4)).to eq "long\nword"
    end

    it "splits early when the space is before the column" do
        expect(WordWrap.wrap("long word", 6)).to eq "long\nword"
    end

    it "keeps as many words on the line as possible" do
        expect(WordWrap.wrap("long long word", 10)).to eq "long long\nword"
    end
end
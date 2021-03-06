

class Result
  attr_accessor :word, :score, :numSyllables, :tags, :defs, :defHeadword, :results

  def initialize(response)
    @results = []
    @response = response.each do |r|
      @word = r["word"]
      @score = r["score"]
      @numSyllables = r["numSyllables"]
      @tags = r["tags"]
      @defs = r["defs"]
      @defHeadword = r["defHeadword"]
      word = Word.new(@word, @score, @numSyllables, @tags, @defs, @defHeadword)
      Words.add(word.word, word)
      @results << word.word
    end
  end

  def results
    @results
  end

end

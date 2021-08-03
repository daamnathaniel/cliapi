
module View
  extend self

  def word(word)
    @word = Words.all[word]
    puts %Q(
-#{@word.word} #{@word.defHeadword}
#{@word.tags}, #{@word.score}, #{@word.numSyllables}
    )
    puts @word.defs
  end

  def words_list(words)
    words.each_with_index do |word, index|
      puts "#{index+1}. #{word}"
    end
  end
end

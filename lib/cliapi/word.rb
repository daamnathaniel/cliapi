module Show

  def word(word)
    puts "#{word}"
  end

  def word_list(list)
    list.each{|word| puts word}
  end



  class Word < Struct.new(:word, :score, :numSyllables, :defs, :tags, :defHeadword)
    def definition
      self.tap do |w|
        puts %q(

w.word  w.tags
w.defHeadword
w.defs
w.score 
w.numSyllables

        )
    end
  end
end

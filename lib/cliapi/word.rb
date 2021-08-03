

Word = Struct.new(:word, :score, :numSyllables, :tags, :defs, :defHeadword)

module Words
  extend self

  @@all = {}

  def add(word, word_info)
    @@all.store(word, word_info)
  end

  def find(word)
    @@all[word.to_sym]
  end

  def all
    @@all
  end
end




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

  def words(words)
    words.each_with_index do |word, index|
      puts "#{index+1}. #{word}"
    end
  end
end



module Parameter
  extend self
  Constraints = {
    similar_meanings: :ml,
    sounds_like: :sl,
    spelled_like: :sp,
    described_by: :rel_jja,
    often_describing: :rel_jjb,
    synonymous_with: :rel_syn,
    triggered_by: :rel_trg,
    antonyms_of: :rel_ant,
    kind_of: :rel_spc,
    more_general_than: :rel_gen,
    compromised_of: :rel_com,
    part_of: :rel_par,
    frequently_follow: :rel_bga,
    frequently_preceed: :rel_bgb,
    rhymes_with: :rel_rhy,
    approximately_rhymes_with: :rel_nry,
    sound_alike: :rel_hom,
    consonants_match: :rel_cns,
    often_follow: :lc,
    often_followed_by: :rc,
    topics: :topics,
    s: :s
  }

  def constraints(constraints, variable)
    @constraints = constraints.to_s.to_sym
    { Parameter::Constraints[@constraints] => variable, md: 'dpsrf' }
  end
end

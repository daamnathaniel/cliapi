
class Question
  class << self
    def constraints
      "which constraint? "
    end

    def endpoint
      "words or sug(suggestion)? "
    end

    def variable
      "what variable word or word part? "
    end

    def word
      "which word? "
    end

    def next_options
      %Q(
choose:
- [more] info on a particular word
- [search] for another word
- [quit]
      )
    end


  end
end

class Statement
  class << self
    def greeting
      "Welcome to words. (powered by datamuse)"
    end

    def suggest_brief
      "suggest: word suggestions given a partially-entered query."
    end

    def suggest
      "- [sug]gest - word suggestions given a partially-entered query using a combination of the operations described in the “/words” resource above."
    end

    def words_brief
      "words: a list of words that match a given set of constraints"
    end

    def words
      "- [words] - a list of words (and multiword expressions) from a given vocabulary that match a given set of constraints."
    end

    def instructions
      %Q{
Instructions:
1. Select either [words] or [sug].
2. If you select [words], also select a [constraint].
3. Enter a base word to search from.
      }
    end

    def initial_options
      %Q(
choose:
#{words}
#{suggest}
- [quit]
      )
    end
  end
end

ASK = -> question { puts question ; gets.strip }

SAY = -> statement { puts statement }

#HASH = -> hash, key, value { hash.store(key.to_sym, value) }
#
#SHOW = -> *args { puts "#{args.join('-')}" }
#

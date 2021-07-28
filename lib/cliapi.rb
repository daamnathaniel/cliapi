require 'blanket'
require 'apicake'


QueryParameter = {
      means_like: :ml, sounds_like: :sl, spelled_like: :sp, related_popular_nouns: :rel_jja, related_popular_adjectives: :rel_jjb, related_synonyms: :rel_syn, related_triggers: :rel_trg, related_antonyms: :rel_ant, kind_of_hyponyms: :rel_spc, general_hyponyms: :rel_gen, comporomise_hyponyms: :rel_com, part_of_meronyms: :rel_par, frequent_followers: :rel_bga, frequent_predecessors: :rel_bgb, related_rhymes: :rel_rhy, approximate_rhymes: :rel_nry, related_homophones: :rel_hom, consonant_match: :rel_cns, s: :s
      }

#
#class Question < Struct.new(:ask)
#  def self.ask(question)
#    puts question
#    answer = gets.strip
#  end
#end
#
#class Which
#  def self.constraint
#    "which constraint? "
#  end
# 
#  def self.variable
#    "which variable? "
#  end
#
#  def self.endpoint
#    "words or sug? "
#  end
#end

module Question
  extend self

  def ask(question)
    puts question
    answer = gets.strip
  end

  def constraint
    'which constraint? '
  end

  def variable
    'which variable? '
  end

  def endpoint
    'words or sug? '
  end
end

module Statement
  extend self

  def say(statement)
    puts statement
  end

  def greeting
    'Welcome to #{appTitle} - #{slogan} - #{version}.'
  end

  def words_description
     "returns a list of words (and multiword expressions) from a given vocabulary that match a given set of constraints."

  def sug_description
    "provides word suggestions given a partially-entered query using a combination of the operations described in the “/words” resource." 

  def instruction
    %W(This app will return a list of words. The content of the list depends on your first choice. Words #{words_description}. While sug #{sug_description}.

If you chose the 'words' route, you will then choose from a set of constraints to find matching words with.

If you chose the 'sug' (suggestions) route, you will need to provide a partial word query. You will input your 'words' query now also.
      )
   end
end


class UserInput < Struct.new(:constraint, :variable, :endpoint); end

class Get < OpenStruct
  include Question
  def initialize
    @userinput = UserInput.new
  end

  def user_input(attribute)
    @attribute = attribute
    @variable = Question.ask(Question.send(@attribute))
    @userinput[@attribute] = @variable
  end 

  def userinput
    @userinput
  end 
end




module Dictionary
  extend self
  @@dictionary = {}
  def dictionary
    @@dictionary
  end

  def add(name, info)
    dictionary[name.to_sym] = info
  end

  def find(word)
    dictionary[word.to_sym]
  end
end


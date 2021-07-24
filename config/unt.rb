require 'apicake'


QUERY = {
    means_like: :ml, sounds_like: :sl, spelled_like: :sp, related_popular_nouns: :rel_jja,
    related_popular_adjectives: :rel_jjb, related_synonyms: :rel_syn, related_triggers: :rel_trg,
    related_antonyms: :rel_ant, kind_of_hyponyms: :rel_spc, general_hyponyms: :rel_gen,
    comporomise_hyponyms: :rel_com, part_of_meronyms: :rel_par, frequent_followers: :rel_bga,
    frequent_predecessors: :rel_bgb, related_rhymes: :rel_rhy, approximate_rhymes: :rel_nry,
    related_homophones: :rel_hom,consonant_match: :rel_cns, s: :s
  }

#question = -> (q) { puts "which #{q}? "; show q.options; gets.strip }

module Question
  def self.question
    puts "which #{self.class.name} ?"; gets.strip
  end
end

#list_numbered = lambda i| puts i}

class Constraint; include Question; end
class Variable; include Question; end
class Endpoint; include Question;

class API < APICake::Base
  base_uri 'api.datamuse.com'
end



module Constraint
  def self.question
    "which constraint? "
  end
end

module Variable
  def self.question
    "which variable? "
  end
end

module Endpoint
  def self.question
    "words or sug? "
  end
end


constraint = Question.ask(Constraint.question).to_sym
variable = Question.ask(Variable.question)
endpoint = Question.ask(Endpoint.question)


class Word < OpenStruct; end

class Words < OpenStruct

  @@all = {}
  attr_accessor :word, :score, :numSyllables, :tags, :defs, :defHeadword, :all

  def initialize(response)
    response.each do |r|
      @word               = r["word"]
      @score              = r["score"]
      @numSyllables       = r["numSyllables"]
      @tags               = r["tags"]
      @defs               = r["defs"]
      @defHeadword        = r["defHeadword"]
      @@all[@word.to_sym] = Word.new(r)
    end
  end

  Word = Struct.new(:word, :score, :numSyllables, :tags, :defs, :defHeadword)



  def all
    @@all
  end

  def self.all
    @@all
  end
end




param = {QUERY[constraint.to_sym] => variable, md: 'dpsrf'}

api = API.new
words = Words.new



response = api.send(endpoint, param)





class Word < OpenScript
  def initialize
  end

  def print
    raise NotImplementedError, 'You must implement the print method'
  end
end

class Constraint < Word

  def print
    p self.class.name
  end
end

class Response < Word



class Printer
  def initialize(document)
    @document = document
  end

  def print
    @document.print
  end
end

Printer.new(Constraint.new).print







:word, :score, :tags, :defs, :numSyllables, :defHeadword

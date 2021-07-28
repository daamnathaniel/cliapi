# module CLIAPI
# end
# 
# require_relative '../config/environment'
require 'apicake'
class API < APICake::Base
  base_uri 'api.datamuse.com'
endef self.ask
module Questionn.ask("words or sug? ")
  def self.ask(question)
    puts question; gets.strip
  end
end
class Constraint
  include Question
  def self.ask
    Question.ask("which constraint? ")
  end
end
class Variable
  include Question
  def self.ask
    Question.ask("which variable? ")
  end
end
class Endpoint
  include Question
  def self.ask
    Question.ask("words or sug? ")
  end
end
QUERY = {
  sounds_like: :sl, spelled_like: :sp, means_like: :ml, s: :s
}



require 'apicake'


class API < APICake::Base
	base_uri 'api.datamuse.com'
end


module Question
  extend self
  def self.ask(question)
  	puts question; gets.strip
  end
end

class Constraint
  include Question 
  def self.ask
  	Question.ask("which constraint? ")
  end
end

class Variable
  include Question
  def self.ask
  	Question.ask("which variable? ")
  end
end

class Endpoint
  include Question
  def self.ask
  	Question.ask("words or sug? ")
  end
end

  QUERY = {
	sounds_like: :sl, spelled_like: :sp, means_like: :ml, s: :s
  }




 
 constraint = Question::Constraint.ask.to_sym
 constraint = QUERY[constraint]
 Parameter = Struct.new(constraint)
 variable = Question::Variable.ask
 parameter = Parameter.new(variable)


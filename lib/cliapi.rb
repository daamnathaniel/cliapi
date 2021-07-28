# class UserInput < Struct.new(:constraint, :variable, :endpoint); end
# 
# class Get < OpenStruct
  # include Question
  # def initialize
    # @userinput = UserInput.new
  # end
# 
  # def user_input(attribute)
    # @attribute = attribute
    # @variable = Question.ask(Question.send(@attribute))
    # @userinput[@attribute] = @variable
  # end
# 
  # def userinput
    # @userinput
  # end
# end
# 
# 
# 
# 
# module Dictionary
  # extend self
  # @@dictionary = {}
  # def dictionary
    # @@dictionary
  # end
# 
  # def add(name, info)
    # dictionary[name.to_sym] = info
  # end
# 
  # def find(word)
    # dictionary[word.to_sym]
  # end
# end
# 

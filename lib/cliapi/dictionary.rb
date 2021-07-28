

module Dictionary
  extend self
  @@dictionary = {}  

  def dictionary
    @@dictionary
  end

  def add(word, info)
    @@dictionary[word] = info
  end

  def find(word)
    @@dictionary[word]
  end

 def process(response)
   response.each do |r|
     rword = r[:word].to_s.to_sym
     @@dictionary.add(rword, r)
     @@dictionary.dictionary
   end
 end

end

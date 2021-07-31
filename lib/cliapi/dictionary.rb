module Dictionary
  extend self
  @@dictionary = {}

  def dictionary
    @@dictionary
  end

  def dictionary_add(term)
    @@dictionary[term[:word]] = term
  end

  def dictionary_find(term)
    @@dictionary[term]
  end

  def process_response(response)
    response.each do |resp|
      @@dictionary.dictionary_add(resp)
      @@dictionary.dictionary
    end
  end
end

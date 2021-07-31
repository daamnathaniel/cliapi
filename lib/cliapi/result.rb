
class Result < OpenStruct; end

class Results
  attr_accessor :results
  def initialize(response)
    @results = response.map{ |r| Result.new(r) }
    Dictionary.dictionary_add(@results)
  end
end

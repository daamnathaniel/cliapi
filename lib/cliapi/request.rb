

class Request
  attr_accessor :api, :endpoint, :params, :response
  def initialize
    @api = API.new
  end

  def words_that
    self.endpoint = "words"
    self
  end

  def suggestions_for(wordpart)
    self.endpoint = "sug"
    self.params = { :s => wordpart }
    self
  end

  def method_missing(name,word)
    self.params = { Query::Parameters[name][0] => word, :md => 'dpsrf' } 
    self
  end

  def fetch
    @response = @api.send(self.endpoint, self.params)
    @response = JSON.parse(@response.to_json, symbolize_names: true)
  end

  def response
    @response
  end
end

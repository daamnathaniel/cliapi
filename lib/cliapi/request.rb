class Request
  attr_accessor :api, :endpoint, :params, :response

  def initialize
    @api = API.new
    self
  end

  def words
    @endpoint = "words"
    self
  end

  def suggestions
    @endpoint = "sug"
    self
  end

  def method_missing(m, *args, &block)
    constraints = Word::Constraints[m.to_sym] if @endpoint == "words"
    constraints = "s" if @endpoint == "sug"
    @params = { constraints => args, :md => 'dpsrf' }
    self
  end

  def fetch
    response  = @api.send(@endpoint, @params)
    @response = JSON.parse(response.to_json, symbolize_names: true)
    @results = Results.new(@response)
  end

  def results
    @results
  end
end


class RequestBuilder
  attr_accessor :request, :constraints, :variable, :response, :results

  def initialize
    @request = Request.new
    @api = @request.api
  end

  def endpoint
    @request.endpoint = ASK.(Question.endpoint)
  end

  def words
    @constraints = ASK.(Question.constraints)
  end

  def sug
    @constraints = "s"
  end

  def params
    @variable = ASK.(Question.variable)
    @request.params = Word.constraints(@constraints, @variable)
  end

  def finish
    @request.fetch
  end

  def request
    @request
  end
end

class Request < Struct.new(:api, :endpoint, :params); end

class RequestBuilder
  attr_accessor :request, :constraints, :variable

  def initialize
    @request = Request.new
    @request.api = API.new
  end

  def request_endpoint
    @request.endpoint = ASK.(Question.endpoint)
  end

  def request_params
    if @request.endpoint == "words"
      @constraints = ASK.(Question.constraints)
    else
      @constraints = "s"
    end
    @variable = ASK.(Question.variable)
    @request.params = Word.constraints(@constraints, @variable)
  end

  def request_send
    response  = @request.api.send(@request.endpoint, @request.params)
    @response = JSON.parse(response.to_json, symbolize_names: true)
    Results.new(@response)
  end

  def request
    @request
  end
end


class Request < Struct.new(:api, :endpoint, :params, :response)
end

class RequestBuilder
  attr_accessor :request, :constraints, :variable, :response

  def initialize
    @request = Request.new
    @request.api = API.new
  end

  def endpoint
    @request.endpoint = ASK.(Question.endpoint)
  end

  def params
    if @request.endpoint == "words"
      @constraints = ASK.(Question.constraints)
    else
      @constraints = "s"
    end
    @variable = ASK.(Question.variable)
    @request.params = Parameter.constraints(@constraints, @variable)
  end

  def response
    @request.response  = @request.api.send(@request.endpoint, @request.params)
  end

  def request
    @request
  end
end

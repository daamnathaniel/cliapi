

class Builder

	def initialize
		@api = API.new
		@request = Request.new
		@word = Word.new
	end

	def request_endpoint(endpoint)
		

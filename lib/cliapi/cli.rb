class CLIAPI::CLI

  def call
    greeting
	main
  end

  def main
    @build = RequestBuilder.new
    @request = @build.request
    initial_menu
    request
    results
    next_menu
  end

  def greeting
	SAY.(Statement.greeting)
	SAY.(Statement.instructions)
  end

  def initial_menu
    SAY.(Statement.initial_options)
  end


  def request
	@build.endpoint
	@build.params
    @build.response
  end


  def results
    @result = Result.new(@build.response)
    View.words(@result.results)
  end

  def next_menu
    SAY.(Statement.next_options)


  end


end

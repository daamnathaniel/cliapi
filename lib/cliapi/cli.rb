class CLI

  def call
	main
  end

  def main
    show_greeting
    show_options
    build_request
    # show_results
    # show_menu
  end

  def show_greeting
	SAY.(Statement.greeting)
  end

  def show_options
	SAY.(Statement.suggest)
	SAY.(Statement.words)
	SAY.(Statement.instructions)
  end


  def build_request
	builder = RequestBuilder.new
	builder.endpoint
	builder.params
    @response = builder.finish
  end


  def show_results
    @results.each do |res|
      puts res["word"]
    end
  end

  def show_menu
	@direction = SAY.(Statement.another)
	if @direction == "another"
	   show_options
	else exit
    end
  end


end

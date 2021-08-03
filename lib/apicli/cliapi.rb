# CLI controller, responsible for user interaction
class WordSelector::CLI



  def call
    WordFinder::Request.new.find_words
      list_options
      menu
  end


  def list_options
    SAY.(Statment.greeting)
    sleep 1
    SAY.(Statement)
    sleep 2
    DISPLAY(request.response)



    DISPLAY = -> (data, method, part) { data.method {|d| puts d[part]}}

    request.response.each do |res|
      puts res["word"]
    end

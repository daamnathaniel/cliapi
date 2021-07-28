class CLI

  def call
	main  		
  end

  def main
    greeting
    menu
    exit
  end

  def greeting
	Dialogue::SAY.(Dialogue::Statement.greeting)
	Dialogue::SAY.(Dialogue::Statement.instructions)
	Dialogue::SAY.(Dialogue::Statement.words)
	Dialogue::SAY.(Dialogue::Statement.suggest)
  end

  def menu
    puts "menu"
  end

  def exit
	puts "exit"
  end

end

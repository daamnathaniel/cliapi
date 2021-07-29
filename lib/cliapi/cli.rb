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

	SAY.(Statement.greeting)
	SAY.(Statement.instructions)
	SAY.(Statement.words)
	SAY.(Statement.suggest)
  end

  def menu
    puts "menu"
  end

  def exit
	puts "exit"
  end

end

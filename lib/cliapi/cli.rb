class CLI

	def call
		start
		show_word("tacos")
		show_word("cat")
		show_word_list(["a", "b"])
		builder
	end

	def start
		puts "start"
	end

	def show_word(word)
		puts "#{word}"
	end

	def show_word_list(list)
		puts "#{list}"
	end

end

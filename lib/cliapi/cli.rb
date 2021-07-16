class CLI

	def call
		start
		show_word("tacos")
		show_word("cat")
		show_word_list(["a", "b"])
		builder
	end

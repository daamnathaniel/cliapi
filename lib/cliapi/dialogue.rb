  ASK = -> question { puts question ; gets.strip }
  SAY = -> statement { puts statement }

#instructions = <<-EOT
#  Instructions:
#  1. Choose from either [words] or [sug].
#  2. If you've chosen [words], choose a [constraint].
#  3. Enter a base word to search from.
#EOT


  class Question
    class << self
      def constraints
        "which constraint? "
      end

      def endpoint
        "words or sug? "
      end

      def variable
        "what variable word or word part? "
      end

      def another
        "would you like to search for another word? or quit? "
      end
    end
  end

  class Statement
    class << self
      def greeting
        "Welcome to words."
      end

      def suggest
"sug - provides word suggestions given a partially-entered query using a combination of the operations described in the “/words” resource above."
      end

      def words
"words - returns a list of words (and multiword expressions) from a given vocabulary that match a given set of constraints."
      end

      def instructions
 		%Q(
Instructions:
        1. Choose from either [words] or [sug].
        2. If you've chosen [words], choose a [constraint].
        3. Enter a base word to search from.
        )
      end
    end
  end

module Dialogue

  ASK = -> question { puts question ; gets.strip }
  SAY = -> statement { puts statement }

#instructions = <<-EOT
#  Instructions:
#  1. Choose from either [words] or [sug].
#  2. If you've chosen [words], choose a [constraint].
#  3. Enter a base word to search from.
#EOT


  class Question
    class << self
      def constraints
        "which constraint? "
      end

      def endpoint
        "words or sug? "
      end

      def variable
        "what variable word or word part? "
      end

      def another
        "would you like to search for another word? or quit? "
      end
    end
  end

  class Statement
    class << self
      def greeting
        "Welcome to words."
      end

      def suggest
"sug - provides word suggestions given a partially-entered query using a combination of the operations described in the “/words” resource above."
      end

      def words
"words - returns a list of words (and multiword expressions) from a given vocabulary that match a given set of constraints."
      end

      def instructions
 		%Q(
Instructions:
        1. Choose from either [words] or [sug].
        2. If you've chosen [words], choose a [constraint].
        3. Enter a base word to search from.
        )
      end
    end
  end
end

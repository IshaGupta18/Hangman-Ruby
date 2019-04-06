require_relative 'hangman-game.rb'
class Player

	def initialize
		@input_char=""

	end

	def play_game

	end

	def take_input

		# call game and return output
		
		@input_char=gets
		puts("enter a character")
		gameover,chancesleft,que=g.update_game_status(@input_char)
		puts(que)
		while (!gameover)
			puts("enter a character")
			@input_char=gets
			gameover,chancesleft,que=g.update_game_status(@input_char)
			puts(que)
		end
		ans=g.select_word
		if que==ans
			puts("You Won")
		end
		else
			puts("You Lost")
		end
	end





end




p = Player.new
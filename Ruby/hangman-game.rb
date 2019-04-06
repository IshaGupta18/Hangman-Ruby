class Game

	# initialize all the words, chances, etc when a new game is created
	def initialize
		# another way of making an array
		@words = %w"learning lollipop education image computer mobile january february friday flower beauty light earth machine book
		news yahoo google internet bangladesh india america cricket football friday sunday sunny"
		@chances_left = 5

		@game_over = false

		
	end

	# write some logic to select the word
	def select_word
		@answer = @words[rand(27)]


		# this would be a list of hashes
		@question = ""
    	@tempque=""
		for x in 0..@answer.length

			@question=@question+"#"
      		@tempque=@tempque+"#"
		end
		return @answer

	end


	# update the status of the game according to the input given by the user
	def update_game_status(user_input)
    for @answer.split("").each_with_index do |a,i|
      if a==user_input
        @question[i]=a
      end
    end
    if @tempque==@question
      @chances_left-=1
  	end
    if @chances_left==0 | @question=@answer
      @game_over=true
 	end
    @tempque=@question 
	return @game_over, @chances_left, @question

	end

	

end
g=Game.new
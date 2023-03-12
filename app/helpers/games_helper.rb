module GamesHelper
  def guess_values_with_empty(game)
    guesses = game.guesses.map { |guess| guess.value }

    (5 - game.guesses.length).times do
      guesses << "....."
    end

    guesses
  end

  def color_for_guess(game_word, guess_word, index)
    if game_word[index] == guess_word[index]
      "green"
    elsif game_word.include?(guess_word[index])
      "yellow"
    else
      "white"
    end
  end
end

require 'open-uri'
require 'json'
class GamesController < ApplicationController
  def new
    abc = ('a'...'z').to_a
    @letters = abc.sample(10)
    @letters_string = @letters.join('')
  end

  def score
    @your_word = params[:word]
    word_array = @your_word.split(//)
    @words = params[:letras_random]
    @valid = true
    word_array.each do |w|
      if @words.include?(w) == false
        
        binding.pry
        
        @valid = false
      end
    end
    url = "https://wagon-dictionary.herokuapp.com/#{@your_word}"
    result = JSON.parse(URI.open(url).read)
    @found = result['found']
    @length = result['length'] || 0
    @score = @length
  end
end

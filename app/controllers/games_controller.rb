class GamesController < ApplicationController
  def new
    abc = ('a'...'z').to_a
    @letters = abc.sample(10)
  end

  def score
    @words
    params[:word]
    
  end
end

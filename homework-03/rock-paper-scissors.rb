require 'sinatra'

moves = ['rock', 'paper', 'scissors']

get '/' do
	@comp_move = moves.shuffle.first()

	erb :index
end

get '/answer' do
	@my_answer = params[:my_answer].downcase
	@comp_answer = params[:comp_answer].downcase

	@answer_lost = "Sorry, #{ @comp_answer } beats #{ @my_answer }. Better luck next time!"
	@answer_won = "You won! Congratulations!"
	@answer_tie = "IT'S A TIE!!! HORRAY!!!"

	erb :answer
end
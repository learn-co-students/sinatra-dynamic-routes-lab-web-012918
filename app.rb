require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    @name = params[:name].reverse
    "#{@name}"
  end

  get '/square/:number' do
    @number = params[:number].to_i
    @square = @number * @number
    "#{@square}"
  end

  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @phrase = params[:phrase]
    @output = @phrase * @number
    "#{@output}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    @word_array = [@word1, @word2, @word3, @word4, @word5]
    @sentence = @word_array.join(" ")
    "#{@sentence}."
  end

  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i
    @output = 0

    if @operation == 'add'
      @output = @number1 + @number2
    elsif @operation == 'subtract'
      @output = @number1 - @number2
    elsif @operation == 'multiply'
      @output = @number1 * @number2
    elsif @operation == 'divide'
      @output = @number1 / @number2
    end
    "#{@output}"
  end

end

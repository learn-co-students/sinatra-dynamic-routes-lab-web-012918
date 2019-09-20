require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    @name = params[:name]
    @name.reverse
  end

  get '/square/:number' do
    @number = params[:number].to_i
    prod = @number * @number
    prod.to_s
  end

  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @phrase = params[:phrase]
    @phrase * @number
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @words = []
    @words << params[:word1]
    @words << params[:word2]
    @words << params[:word3]
    @words << params[:word4]
    @words << params[:word5]
    @words.join(" ") + "."
  end

  get '/:operation/:number1/:number2' do
      @num1 = params[:number1].to_i
      @num2 = params[:number2].to_i
      @operation = params[:operation]

      if @operation == 'add'
        results = @num1 + @num2
        results.to_s
      elsif @operation == 'subtract'
        results = @num1 - @num2
        results.to_s
      elsif @operation == 'multiply'
        results = @num1 * @num2
        results.to_s
      elsif @operation == 'divide'
        results = @num1 / @num2
        results.to_s
      end
  end



end

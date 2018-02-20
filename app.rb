require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @reversed = params[:name].reverse
    "#{@reversed}"
  end

  get '/square/:number' do
    @squared = params[:number].to_i ** 2
    "#{@squared}"
  end

  get '/say/:number/:phrase' do
    @num = params[:number].to_i
    @phrase = params[:phrase]
    "#{@phrase}" * @num
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    @num1 = params[:number1].to_f
    @num2 = params[:number2].to_f
    @sum = @num1 + @num2
    @difference = @num1 - @num2
    @product = @num1 * @num2
    @quotient = @num1 / @num2

    if params[:operation] == 'add'
      "#{@sum}"
    elsif params[:operation] == 'subtract'
      "#{@difference}"
    elsif params[:operation] == 'multiply'
      "#{@product}"
    elsif params[:operation] == 'divide'
      "#{@quotient}"
    end
  end
end

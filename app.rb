require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @name = params[:name].reverse
    "#{@name}"
  end

  get '/square/:number' do
    @num = params[:number].to_i
    @num = @num * @num
    "#{@num.to_s}"
  end

  get '/say/:number/:phrase' do
    @times = params[:number].to_i
    @phrase = params[:phrase]
    @output = ""
    @times.times do
      @output << "#{@phrase} "
    end
    "#{@output}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    @operator = params[:operation]
    if @operator == "add"
      @sum = params[:number1].to_i + params[:number2].to_i
      "#{@sum.to_s}"
    elsif @operator == "subtract"
      @sum = params[:number1].to_i - params[:number2].to_i
      "#{@sum.to_s}"
    elsif @operator == "multiply"
      @sum = params[:number1].to_i * params[:number2].to_i
      "#{@sum.to_s}"
    elsif @operator == "divide"
      @sum = params[:number1].to_i / params[:number2].to_i
      "#{@sum.to_s}"
    end
  end
end

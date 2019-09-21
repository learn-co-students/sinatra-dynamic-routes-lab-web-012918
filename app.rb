require_relative 'config/environment'
require 'pry'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @reversed_name = params[:name].reverse
    "#{@reversed_name}"
  end

  get '/square/:number' do
    @squared = params[:number].to_i ** 2
    "#{@squared}"
  end

  get '/say/:number/:phrase' do
    @output = ""
    @phrase = params[:phrase]
    @times = params[:number].to_i
    @times.times{|x| @output += @phrase}
    "#{@output}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @output = []
    (1..5).each do |x|
      word = "word#{x}"
      @output << params[word.to_sym]
    end
    "#{@output.join(" ")}."
  end

  #(add, subtract, multiply or divide)
  get '/:operation/:number1/:number2' do
    result = 0
    num1 = params[:number1].to_i
    num2 = params[:number2].to_i
    case params[:operation]
    when "add"
      result = num1 + num2
    when "subtract"
      result = num1 - num2
    when "multiply"
      result = num1 * num2
    when "divide"
      result = num1 / num2
    end
    "#{result}"
  end



end

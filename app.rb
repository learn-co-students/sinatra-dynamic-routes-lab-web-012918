require_relative 'config/environment'
require 'pry'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    params[:name].reverse!
  end

  get '/square/:number' do
    @num = params[:number].to_i
    (@num ** 2).to_s
  end

  get '/say/:number/:phrase' do
    # binding.pry
    arr = []
    params[:number].to_i.times do |n|
      arr << params[:phrase]
    end
    arr.join
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params.map{|k,v| v}.join(' ')}."
  end

  get '/:operation/:number1/:number2' do
    first = params[:number1].to_i
    second = params[:number2].to_i

    case params[:operation]
    when 'add'
      (first + second).to_s
    when 'subtract'
      (first - second).to_s
    when 'multiply'
      (first * second).to_s
    when 'divide'
      (first / second).to_s
    end
    
  end


end

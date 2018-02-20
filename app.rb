require_relative 'config/environment'

class App < Sinatra::Base
  get '/reversename/:name' do
    name = params[:name]
    name.reverse
  end

  get '/square/:number' do
    num = params[:number].to_i
    "#{num * num}"
  end

  get '/say/:number/:phrase' do
    num = params[:number].to_i
    phrase = params[:phrase]
    final_str = ""
    num.times do
      final_str += phrase + " "
    end
    final_str
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    w1 = params[:word1]
    w2 = params[:word2]
    w3 = params[:word3]
    w4 = params[:word4]
    w5 = params[:word5]
    final = [w1, w2, w3, w4, w5].join(" ") + "."
  end

  get '/:operation/:number1/:number2' do
    op = params[:operation].downcase
    num1 = params[:number1].to_i
    num2 = params[:number2].to_i

    if op == 'add'
      "#{num1 + num2}"
    elsif op == 'subtract'
      "#{num1 - num2}"
    elsif op =='multiply'
      "#{num1 * num2}"
    elsif op == 'divide' && num2 != 0
      "#{num1 / num2}"
    else
      "No such operation"
    end

  end

end

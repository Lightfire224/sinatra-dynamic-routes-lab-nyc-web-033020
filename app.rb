require_relative 'config/environment'

class App < Sinatra::Base
  get '/reversename/:name' do
    reversed_name = params[:name]
    "#{reversed_name.reverse}"
  end

  get '/square/:number' do
    number = params[:number].to_i
    square = number * number
    "#{square}"
  end

  get '/say/:number/:phrase' do
    answer = ''
    number = params[:number].to_i
    phrase = params[:phrase]
    number.times do 
      answer += phrase
    end
    answer
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    word1 = params[:word1]
    word2 = params[:word2]
    word3 = params[:word3]
    word4 = params[:word4]
    word5 = params[:word5]

    answer = "#{word1} #{word2} #{word3} #{word4} #{word5}." 
  end

  get '/:operation/:number1/:number2' do
    operation = params[:operation]
    number1 = params[:number1].to_i
    number2 = params[:number2].to_i
    answer = 0

    if operation == 'add'
      answer = (number1 + number2).to_s
    end
    if operation == 'subtract'
      answer = (number2 - number1).to_s
    end
    if operation == 'multiply'
      answer = (number1 * number2).to_s
    end
    if operation == 'divide'
      answer = (number1 / number2).to_s
    end
    answer
  end
end
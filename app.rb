require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    @name = params[:name]
    @name.reverse
  end

  get '/square/:number' do
    @number = params[:number].to_i
    "#{@number * @number}"
  end

  get '/say/:number/:phrase' do
    speech = ""
    @number = params[:number].to_i
    @phrase = params[:phrase]
    @number.times do
      speech += "#{@phrase}"
    end
    speech
  end 

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
  end

  ## or: 
    # string = ""
    # params.each do |key, value|
    #   string += value + " "
    # end
    # string[0...-1] + "."

  get '/:operation/:number1/:number2' do
    operation = params[:operation].downcase
    number1 = params[:number1].to_i
    number2 = params[:number2].to_i
    if operation == "add"
      "#{number1 + number2}"
    elsif operation == "subtract"
      "#{number1 - number2}"
    elsif operation == "multiply"
      "#{number1 * number2}"
    else operation == "divide"
      "#{number1 / number2}"
    end
  end
  ##or: consider using the case params and when methodology.

end
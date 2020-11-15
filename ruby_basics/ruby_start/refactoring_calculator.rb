require 'yaml'
MESSAGES = YAML.load_file('calculator_messages.yml')

LANGUAGE = 'es'

def prompt(message)
  Kernel.puts("=> #{message}")
end

def valid_number?(num)
  num.to_i() != 0
end

def get_first_number
  number1 = ''
  loop do
    prompt("What's the first number?")
    number1 = Kernel.gets().chomp()

    if valid_number?(number1)
      break
    else
      prompt("Hmm... that doesn't look like a valid number")
    end
  end
  number1
end

def get_second_number
  number2 = ''
  loop do
    prompt("What's the second number?")
    number2 = Kernel.gets().chomp()

    if valid_number?(number2)
      break
    else
      prompt("Hmm... that doesn't look like a valid number")
    end
  end
  number2
end

def operation_to_message(op)
  case op
  when '1'
    'Adding'
  when '2'
    'Substracting'
  when '3'
    'Multiplying'
  when '4'
    'Dividing'
  end
end

def operation_to_perform
  operator = ''

  loop do
    operator = Kernel.gets().chomp()

    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt("Must choose 1,2,3,4")
    end
  end
  operator
end

def messages(message, lang='en')
  MESSAGES[lang][message]
end

prompt(messages('welcome', LANGUAGE))

name = ''

loop do
  name = Kernel.gets().chomp()

  if name.empty?()
    prompt("Make sure to use a valid name.")
  else
    break
  end
end

prompt("Hi #{name}")

loop do
  number1 = get_first_number
  number2 = get_second_number
  

  operator_prompt = <<-MSG
  What operation would you like to perform?
  1) add
  2) substract
  3) multiply
  4) divide

  MSG

  prompt(operator_prompt)

  operator = operation_to_perform

  prompt("#{operation_to_message(operator)} to perform...")

  result = case operator
          when '1'
            result = number1.to_i() + number2.to_i()
          when '2'
            result = number1.to_i() - number2.to_i()
          when '3'
            result = number1.to_i() * number2.to_i()
          when '4'
            result = number1.to_f() / number2.to_f()
          end

  prompt("The result is #{result}")
  prompt("Do you want to perform another calculation? (Y to calculate again)")
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end

prompt("Thank you for using the calculator!")
require 'yaml'
MESSAGES = YAML.load_file('refactoring_calculator_messages.yml')

puts MESSAGES.inspect

def prompt(message)
  Kernel.puts("=> #{message}")
end

def valid_number?(num)
  num.to_i() != 0
end

def operation_to_message(op)
  case op
  when '1'
    'Adding'
  when '2'
    'Subtracting'
  when '3'
    'Multiplying'
  when '4'
    'Dividing'
  end
end

# prompt("Welcome to calculator! Enter your name:")
prompt(MESSAGES['welcome'])

name = ''

loop do
  name = Kernel.gets().chomp()

  if name.empty?()
    prompt(MESSAGES['valid_name'])
  else
    break
  end
end

loop do
  prompt("Hi #{name}!")

  number1 = ''

  loop do
    prompt("What's the first number?")
    number1 = Kernel.gets().chomp()

    if valid_number?(number1)
      break
    else
      prompt("Hmm...that doesn't look like a valid number")
    end
  end

  number2 = ''

  loop do
    prompt("What's the second number?")
    number2 = Kernel.gets().chomp()

    if valid_number?(number2)
      break
    else
      prompt("Hmm...that doesn't look like a valid number")
    end
  end

  operator_prompt = <<-MSG

  What operation would you like to perform?
  1) add
  2) subtract
  3) multiply
  4) divide

  MSG

  prompt(operator_prompt)
  operator = ''

  loop do
    operator = Kernel.gets().chomp()

    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt("Must choose 1, 2, 3 or 4")
    end
  end

  prompt("#{operation_to_message(operator)} the two numbers...")

  result = case operator
           when '1'
             number1.to_i() + number2.to_i()
           when '2'
             number1.to_i() - number2.to_i()
           when '3'
             number1.to_i() * number2.to_i()
           when '4'
             number1.to_f() / number2.to_f()
           end

  prompt("The result is #{result}")

  prompt("Do you want to perform another calculation? (Y to calculate again")
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end

prompt("Thank you for using the calculator!")

system('clear') || system('cls')


#Assignment Questions
# def integer?(input)
#   input.to_i.to_s == input
# end

# def integer?(input)
#   Integer(input) rescue false
# end

# #2
# def number?(num)
#   num.to_f.to_s == num
# end

# def float?(input)
#   Float(input) rescue false
# end

#3
#case statement needs to be the last expression in the method to work
#if additional lines are required, then save case method into another variable
#make sure to return the variable as last expression in the method


#4 extracting messages in the program to a configuration file
#create a configuration file using .txt, json or csv
#extract hard coded messages into yaml formatted file .yml
#use the following 1) require 'yaml' 2) MESSAGES = YAML.load_file('the yml file')
#replace all hard coded prompts with: prompt(MESSAGES['welcome']) the hash created by yaml 
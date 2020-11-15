require 'yaml'
MESSAGES = YAML.load_file('car_calculator_messages.yml')

LANGUAGE = 'yr'

def messages(message, lang)
  MESSAGES[lang][message]
end

MONTH = 12

def prompt(message)
  Kernel.puts("=> #{message}")
end

def ask_username
  name = ''
  loop do
    name = gets().chomp()

    if name.empty?()
      prompt("Please enter a valid name!")
    else
      break
    end
  end
  name
end

def valid_loan_amount?(amount)
  Integer(amount, exception: false) > 0
end

def ask_loan_amount
  loan_amount = ''

  loop do
    prompt("Please enter your loan amount:")
    loan_amount = gets().chomp()

    if valid_loan_amount?(loan_amount)
      break
    else
      prompt("Please enter an valid loan amount!")
    end
  end
  loan_amount
end

def valid_float_apr?(rate)
  Float(rate, exception: false) > 0
end

def ask_apr
  annual_rate = ''

  loop do
    prompt("Please enter the Annual Percentage Rate:")
    annual_rate = gets().chomp()

    if valid_float_apr?(annual_rate)
      break
    else
      prompt("Please enter a valid rate!")
    end
  end
  annual_rate
end

def valid_loan_duration?(duration)
  Integer(duration, exception: false) > 0
end

def ask_loan_duration
  loan_duration = ''

  loop do
    prompt("Please enter your loan duration:")
    loan_duration = gets().chomp()

    if valid_loan_duration?(loan_duration)
      break
    else
      prompt("Please enter an valid loan duration!")
    end
  end
  loan_duration
end

def operator_to_message(operator)
  case operator
  when '1'
    'calculating the monthly interest rate'
  when '2'
    'calculating the loan duration in months'
  when '3'
    'calculating the monthly payment'
  end
end

def operation_to_perform
  operator = ''

  loop do
    operator = gets().chomp()

    if %w(1 2 3).include?(operator)
      break
    else
      prompt("Please enter 1, 2, or 3!")
    end
  end
  operator
end

def result_prompt(result)
  case result
  when '1'
    "The monthly interest rate is #{result}"
  when '2'
    "The loan duration in months is #{result}"
  when '3'
    "The monthly payment is #{result}"
  end
  result
end

#######################################################################################

prompt(messages('welcome', LANGUAGE))

name = ask_username
prompt("Hi #{name}")

loop do
  loan_amount = ask_loan_amount

  annual_rate = ask_apr

  loan_duration = ask_loan_duration

  operator_prompt = <<-MSG
  What operation would you like to calculate?
  1) monthly interest rate
  2) loan duration in months
  3) monthly payment
  MSG

  prompt(operator_prompt)

  operator = operation_to_perform

  prompt("#{operator_to_message(operator)}...")

  monthly_rate = annual_rate.to_f / 100 / MONTH
  monthly_duration = loan_duration.to_i * MONTH
  monthly_rate_duration = (monthly_rate)**(-monthly_duration)
  monthly_payment = loan_amount.to_i * (monthly_rate / (1 - (1 + monthly_rate_duration)))

  result = case operator
           when '1'
             (monthly_rate * loan_amount.to_i).round(2)
           when '2'
             loan_duration.to_i * MONTH
           when '3'
             monthly_payment.round(2)
           end

  prompt("Now #{operator_to_message(operator)}...")

  prompt("The result of the calculation is #{result_prompt(result)}")

  prompt("Do you want to calculate something else? (y/n)")
  answer = gets().chomp()
  break unless answer == 'yes' || answer == 'y'
end

prompt("Thanks #{name} for using the Car Calculator!")

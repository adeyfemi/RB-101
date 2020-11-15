# ask the user for loan amount, APR, loan duration
# ask the user for operation to perform
# perform the operaton requested
# output the result

# required: calculate monthly interest rate, loan duration in months, and
# monthly payment

MONTHS = 12

def prompt(msg)
  puts "=> #{msg}"
end

def valid_number?(num)
  Integer(num) || Float(num)
end

def operation_to_message(op)
  case op
  when '1'
    'the monthly interest rate'
  when '2'
    'of the loan duration in months'
  when '3'
    'of the monthly payment'
  end
end

def ask_loan_amount
  loan_amount = ''
  loop do
    prompt("Enter your loan amount:")
    loan_amount = gets.chomp

    if valid_number?(loan_amount)
      break
    else
      prompt("Enter a valid loan amount.")
    end
  end
  loan_amount
end

def ask_loan_duration
  loan_duration = ''
  loop do
    prompt("Enter the loan tenor:")
    loan_duration = gets.chomp

    if valid_number?(loan_duration)
      break
    else
      prompt("Enter the loan tenor in years.")
    end
  end
  loan_duration
end

def ask_annual_rate
  annual_rate = ''
  loop do
    prompt("Enter the annual interest rate:")
    annual_rate = gets.chomp

    if valid_number?(annual_rate)
      break
    else
      prompt("Enter your annual loan interest rate.")
    end
  end
  annual_rate
end

def ask_operator
  operator = ''
  loop do
    operator = gets.chomp

    if %w(1 2 3).include?(operator)
      break
    else
      prompt("Must choose 1 2 or 3")
    end
  end
  operator
end

def ask_operator_prompt
  operator_prompt = <<-MSG
  What operation would you like to perform?
  1) Calculate the monthly interest rate
  2) Calculate the loan duration in months
  3) Calculate the monthly payment
  MSG
end

prompt("Welcome to the Mortgage Calculator. Enter your name:")

name = ''
loop do
  name = gets.chomp

  if name.empty?()
    prompt("Please enter your name.")
  else
    break
  end
end

prompt("Hi #{name}!")

# game play
loop do
  loan_amount = ask_loan_amount

  loan_duration = ask_loan_duration

  loan_interest = ask_annual_rate

  operator_prompt = ask_operator_prompt

  prompt(operator_prompt)

  operator = ask_operator

  prompt(operation_to_message(operator).to_s)

  mth_int_rate = (loan_interest.to_f / MONTHS / 100)
  loan_dur_in_mths = loan_duration.to_i * MONTHS

  result = case operator
           when '1'
             mth_int_rate
           when '2'
             loan_dur_in_mths
           when '3'
             loan_amount.to_i * (mth_int_rate / (1 - (1 + mth_int_rate)**(-loan_dur_in_mths)))
           end

  prompt("The result of #{operation_to_message(operator)} is: #{format('%0.2f', result)}.")

  prompt("Do you want to perform another operation?")
  answer = gets.chomp
  break unless %w(y yes).include?(answer)
end

prompt("Thanks for using the mortgage calculator. Good bye!")

system('clear') || system('cls')

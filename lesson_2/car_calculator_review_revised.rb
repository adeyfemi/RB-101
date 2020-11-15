def prompt(message)
  Kernel.puts("=> #{message}")
end

def retrieve_user_name
  name = ''

  loop do
    name = Kernel.gets().chomp().gsub(/\s+/, "")
    if name.empty?()
      prompt("Make sure you use a valid name.")
    else
      break
    end
  end
  name
end

def valid_loan_amount?(input)
  Integer(input, exception: false) > 0
end

def valid_apr?(apr)
  Float(apr, exception: false) > 0
end

def valid_loan_duration?(dur)
  Integer(dur, exception: false) > 0
end

def retrieve_amount
  loan_amount = ''

  loop do
    prompt("What is the loan amount?")
    loan_amount = Kernel.gets().chomp()

    if valid_loan_amount?(loan_amount)
      break
    else
      prompt("Please input a valid loan amount")
    end
  end
  loan_amount
end

def retrieve_apr
  annual_percentage_rate = ''

  loop do
    prompt("What is your annual percentage rate?")
    annual_percentage_rate = Kernel.gets().chomp()

    if valid_apr?(annual_percentage_rate)
      break
    else
      puts("Please input a valid annual percentage rate")
    end
  end
  annual_percentage_rate
end

def retrieve_duration
  loan_duration = ''

  loop do
    prompt("How long is the duration of the loan in years?")
    loan_duration = Kernel.gets().chomp()

    if valid_loan_duration?(loan_duration)
      break
    else
      puts("Please input a positive whole number for the duration.")
    end
  end
  loan_duration
end

def retrieve_operator
  operator = ''

  loop do
    operator = Kernel.gets().chomp()

    if %w(1 2).include?(operator)
      break
    else
      prompt("Must choose 1 or 2")
    end
  end
  operator
end

operator = ''

def operation_to_message(op)
  case op
  when '1'
    'Calculating the monthly interest rate'
  when '2'
    'Calculating the loan duration in months'
  end
end

# *********************************************************************************

prompt("Welcome to the mortgage/car calculator! Enter your name:")

name = retrieve_user_name

loop do
  prompt("Hi #{name}!.")

  user_amount = retrieve_amount
  user_apr = retrieve_apr
  user_dur = retrieve_duration

  operator_prompt = <<-MSG

  What operation would you like to perform?
  1) calculate the monthly interest rate
  2) calculate the loan duration in months

  MSG

  prompt(operator_prompt)

  operator = retrieve_operator

  prompt("#{operation_to_message(operator)} for the loan...")

  loan_dur_mths = (user_dur.to_i * 12)
  annual_int_rate = (user_apr.to_f / 100).round(2)
  mth_int_rate = annual_int_rate / 12
  mth_payment = user_amount.to_i * (mth_int_rate.to_f / (1 - (1 + mth_int_rate)**(-loan_dur_mths)))

  case operator
  when '1'
    prompt("The monthly interest amount is $#{format('%0.2f', mth_payment)}.")
  when '2'
    prompt("The loan duration is #{format('%0.2f', loan_dur_mths)} months.")
  end

  prompt("Do you want to recalculate? (Y to recalculate or N to exit).")
  answer = Kernel.gets().chomp()
  break unless answer.downcase() == 'y'
end

prompt("Thank you for using the calculator.")

system('clear') || system('cls')

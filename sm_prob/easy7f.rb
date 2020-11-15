# Staggered Caps (Part 2)

#input: string
#output: string
#rules:
# => a method that takes a string and returns a new string
# => new string contains original value with every other character capitalized
# => not letters remain the same but don't count as characters when switching

#algorithm
#1. write a method and pass string as an argument
#2. convert string into array
#3. call each with index and map and iterate through the array
#4. if index is odd lowecase, and it even upcase

def staggered_case(words)
  mixed_chars = words.chars.each_with_index.map do |char, index|
    if index.even? && char =~ /[a-zA-Z]/
      char.upcase
    elsif index.odd? && char =~ /[a-zA-Z]/
      char.downcase
    else
      char
    end
  end
  mixed_chars.join
end

staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
staggered_case('ALL_CAPS') == 'AlL_CaPs'
staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'


#Alternative solution

def staggered_case(string)
  result = ''
  need_upper = true
  string.chars.each do |char|
    if char =~ /[a-z]/i
      if need_upper
        result += char.upcase
      else
        result += char.downcase
      end
      need_upper = !need_upper
    else
      result += char
    end
  end
  result
end

# Staagered Caps Part 2 Further Exploration
def staggered_case(string, cap_req = true, alpha_req = true)
  need_upper = cap_req
  stag_case = []
  string.chars.each do |char|
    need_upper ? stag_case << char.upcase : stag_case << char.downcase
    need_upper = !need_upper if alpha_req ? char =~ /[a-z]/i : true
  end
  stag_case.join
end

staggered_case('ignore 77 the 444 numbers', true, true) == 'IgNoRe 77 ThE 444 nUmBeRs'
staggered_case('ignore 77 the 444 numbers', true, false) == 'IgNoRe 77 ThE 444 NuMbErS'
staggered_case('ignore 77 the 444 numbers', false, true) == 'iGnOrE 77 tHe 444 NuMbErS'
staggered_case('ignore 77 the 444 numbers', false, false) == 'iGnOrE 77 tHe 444 nUmBeRs'
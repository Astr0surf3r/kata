# catYearsSequence: 15, 24, 28, 32, 36, 40, 44, 48, 52, 56, 60, 64, 68, 72, 76, 80, 84, 88, 92, 96, 100
# dogYearsSequence: 15, 24, 29, 34, 39, 44, 49, 54, 59, 64, 69, 74, 79, 84, 89, 94, 99, 104, 109, 114, 119

# calculate sequencces for cat and dog years 
@catYearsSequence = (1..20).map do |i|
  if i == 1
    15
  elsif i == 2
    24
  else
    24 + ((i - 2) * 4)
  end
end

@dogYearsSequence = (1..20).map do |i|
  if i == 1
    15
  elsif i == 2
    24
  else
    24 + ((i - 2) * 5)
  end
end

puts "catYearsSequence: #{@catYearsSequence}"
puts "dogYearsSequence: #{@dogYearsSequence}"

def human_years(catYears, dogYears)
  # Convert catYears in human years
  cat_human_years = convert_animal_years_to_human_years(catYears, @catYearsSequence)
  
  # Convert dogYears in human years
  dog_human_years = convert_animal_years_to_human_years(dogYears, @dogYearsSequence)

  # Return an array with both human years (for cat and dog)
  [cat_human_years, dog_human_years]
end

def convert_animal_years_to_human_years(animalYears, yearsSequence)
  yearsSequence.each_with_index do |animalYear, index|
    if animalYears == animalYear
      return index + 1  # Return the corresponding human year when a match is found
    elsif animalYears < animalYear
      if index == 0 # first element of the sequence
        # Interpolate between 0 and the first animal year
        prev_animal_year = 0
        prev_human_year = 0
      else
        prev_animal_year = yearsSequence[index - 1]
        prev_human_year = index
      end

      next_human_year = index + 1 

      # Calculate through interpolation between prev_animal_year and animalYear (next animal year)
      fraction = (animalYears - prev_animal_year).to_f / (animalYear - prev_animal_year).to_f
      human_years = prev_human_year + fraction * (next_human_year - prev_human_year)

      return human_years.round(2)
    end
  end

  # If no match is found animalYears is beyond the known range
  "Invalid age."
end

# Example
catYears = 16
dogYears = 32

human_years_array = human_years(catYears, dogYears)
puts "Human years for cat and dog: #{human_years_array}"

# Output:
# calculate the human years using interpolation formula for cat and dog years
# Human years for cat and dog: [1.11, 3.6]

# Interpolation formula for cats
# prev_animal_year = 15
# prev_human_year = 1
# next_human_year = 2
# animalYears = 16
# animalYear = 24
# fraction = (animalYears - prev_animal_year).to_f / (animalYear - prev_animal_year)
# human_years = prev_human_year + fraction * (next_human_year - prev_human_year)
# fraction = (16 - 15).to_f / (24 - 15).to_f
# human_years = 1 + 0.1111111111111111 * (2 - 1)
# human_years = 1.1111111111111112

# Interpolation formula for dogs
# prev_animal_year = 29
# prev_human_year = 3
# next_human_year = 4
# animalYears = 32
# animalYear = 34
# fraction = (animalYears - prev_animal_year).to_f / (animalYear - prev_animal_year)
# human_years = prev_human_year + fraction * (next_human_year - prev_human_year)
# fraction = (32 - 29).to_f / (34 - 29).to_f
# human_years = 3 + 0.6 * (4 - 3)
# human_years = 3.6

# visualization of interpolation between 2 numbers
# 10 _________________ 20
# a = 10 
# b = 20
# the interpolation number 12 we can calculate through a fraction
# 10 ___12____________ 20
# fraction = (12 - 10) / (20 - 10) = 0.2 (20 % of the way between 10 and 20)
# 10 + 0.2 * (20 - 10) = 12
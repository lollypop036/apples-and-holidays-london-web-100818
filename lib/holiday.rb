require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
return holiday_supplies[:summer][:fourth_of_july][1]
 
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  
 
  holiday_hash[:winter][:christmas] << supply
  holiday_hash[:winter][:new_years] << supply
  
  
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays

end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring][:memorial_day] << supply

end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
holiday_supplies[season][holiday_name] = supply_array
holiday_supplies
end

def all_winter_holiday_supplies(holiday_hash)
  array = []
  holiday_hash.map do |x,y|
    array.push(y.values)
  end
 array.flatten!
 
end

def all_supplies_in_holidays(holiday_hash)
  holiday_supplies.each do |szn,szn_hash|
    
    
    szn_hash.each do |holiday,gifts|
      
   szn = szn.to_s.capitalize!
   
   holiday.each |x| x.gbsub("_", " ")
  
    puts "#{szn}:"
   
 
end
 end
  
  
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.

end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"

end








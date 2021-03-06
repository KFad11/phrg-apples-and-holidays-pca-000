require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash[:winter][:christmas] << supply
  holiday_hash[:winter][:new_years] << supply
end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring][:memorial_day] << supply
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array
  holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  all_supplies = []
  holiday_hash[:winter].each do |holiday, supply|
    all_supplies << supply
  end
  all_supplies.flatten
end


def all_supplies_in_holidays(holiday_hash)
  puts "Winter:
  Christmas: Lights, Wreath
  New Years: Party Hats
Summer:
  Fourth Of July: Fireworks, BBQ
Fall:
  Thanksgiving: Turkey
Spring:
  Memorial Day: BBQ
"
end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"

  holidays_with_bbq = []
  holiday_hash.each do |_season, holidays|
    holidays.each do |holiday, supplies|
      if supplies.include?("BBQ")
        holidays_with_bbq << holiday
      end
    end
  end
  holidays_with_bbq
end







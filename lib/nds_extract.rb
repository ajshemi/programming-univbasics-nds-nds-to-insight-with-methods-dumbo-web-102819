require 'directors_database'

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }

def directors_totals(nds)
  result={}
  nds.map do |obj|
    sum=gross_for_director(obj)
    result[obj[:name]]=sum
  end
  result
  #nil
end

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  sum=0
  director_data[:movies].map do |value|
    value[:worldwide_gross]
    sum+=value[:worldwide_gross]
  end
  sum
end

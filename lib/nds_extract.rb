$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

require 'pry'

def directors_totals(nds)
  binding.pry 
  row_index = 0 
  totals = {}
  
  while row_index < nds.length do 
    column_index = 0 
    totals[nds[row_index][:name]] = 0 
    while column_index < nds[row_index][:movies].length do 
      
      totals[nds[row_index][:name]] += nds[row_index][:movies][column_index][:worldwide_gross]  
    column_index += 1
  end 
  row_index += 1 
end 
return totals 
end 




#We need two while loops because we have two arrays that we need to loop over. 
#The first array, is the outside array that holds all of the directors. 
#The second array, is the inside array that holds all the movies for one director at a time. 







# Remember, it's always OK to pretty print what you get *in* to make sure
  # that you know what you're starting with!
  # The Hash result be full of things like "Jean-Pierre Jeunet" => "222312123123"
  
  
  #
  # Use loops, variables and the accessing method, [], to loop through the NDS
  # and total up all the
  # ...
  # ...
  # ...
  #
  #
  # Be sure to return the result at the end!
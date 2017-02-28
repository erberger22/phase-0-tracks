# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # Declare an empty hash called grocery list
  # Take the string and apply the .split method and set it a empty array.
  # Call .each method on array. 
  # In loop add each string to hash as key.  
  # set default quantity to 0
  # print the list to the console [can you use one of your other methods here?]
# output: Hash

def listofgroceries(food)
  grocerylist = {}
  groceries = []
  groceries = food.split(" ")
  groceries.each do |item|
    grocerylist[item] = 0
  end
  grocerylist
end

#print listofgroceries("carrots apples cereal pizza")
newlist = listofgroceries("carrots apples cereal pizza")

# Method to add an item to a list
# input: 
# Make method Additem(grocery_list ,item, quantity)
# grocerylist["item you want to add"] = quantity you want to add
# steps: Plug arguments into method
# output: Updated Grocery list hash

def additem(grocerylist, item, quantity)
  grocerylist[item] = quantity
  grocerylist
end

puts additem(newlist, "banana", 3)


# Method to remove an item from the list
# input:
# Make method Deleteitem(grocery_list, item for deletion)
# grocery_list.delete("item for deletion")
# Return grocery_list
# steps:
# output: New grocery list

newnewlist = additem(newlist, "banana", 3)
def deleteitem(grocerylist, deleteitem)
  grocerylist.delete(deleteitem)
  grocerylist
end

puts deleteitem(newnewlist, "carrots")

thirdupdatedlist = deleteitem(newnewlist, "carrots")


# Method to update the quantity of an item
# input: Grocery List, item, new quantity
# steps: grocerylist[item] = new quantity
# output: new grocery hash

def updatequantity(grocerylist, item, quantity)
  grocerylist[item] = quantity
  grocerylist
end

puts updatequantity(thirdupdatedlist, "pizza", 10)

finallist = updatequantity(thirdupdatedlist, "pizza", 10)

finallist.each do |item, quantity|
  puts "We want #{quantity} of #{item}"
end



# Method to print a list and make it look pretty
# input:
# steps:
# output:




# This is a Rails app and we want to load all the files in the app 
# when running this code.  To do so, your current working directory
# should be the top-level directory (i.e. /workspace/your-app/) and then run:
# rails runner labs/2-models.rb

# **************************
# DON'T CHANGE OR MOVE
Salesperson.destroy_all
# **************************

# Lab 2: Models
# - We've added data into the companies table.  Next, we'll add data
#   into the salespeople table.  Follow the steps below to insert and
#   read rows of salesperson data.  Update a row.  Afterwards, display
#   how many rows have been inserted into the salespeople table.
#   Lastly, if you want a challenge, try writing code to display the
#   full name of each salesperson.

# 1a. check out the schema file
# 1b. check out the model file

puts "Salespeople: #{Salesperson.all.count}"

# 2. insert 1-2 rows in salespeople table.
salesperson1 = Salesperson.new
salesperson1["first_name"] = "Ben"
salesperson1["last_name"] = "Block"
salesperson1["email"] = "benjamin.block@kellogg.northwestern.edu"
salesperson1.save

puts "Salespeople: #{Salesperson.all.count}"

salesperson2 = Salesperson.new
salesperson2["first_name"] = "Brian"
salesperson2["last_name"] = "Eng"
salesperson2["email"] = "brian.eng@kellogg.northwestern.edu"
salesperson2.save


# 3. write code to display how many salespeople rows are in the database

# ---------------------------------
# Salespeople: 2

puts "Salespeople: #{Salesperson.all.count}"

# 4. modify/update column data for a row in the salespeople table.
ben = Salesperson.find_by({"first_name" => 
"Ben", "last_name" => "Block"})
ben["email"] = "bjblock@gmail.com"
ben.save

# CHALLENGE:
# 5. write code to display each salesperson's full name
first_name = ben["first_name"]
last_name = ben["last_name"]
puts "#{first_name} #{last_name}" #inefficient doing it this way

all_salespeople = Salesperson.all
for salesperson in all_salespeople
    first_name = salesperson["first_name"]
    last_name = salesperson["last_name"]
    puts "#{first_name} #{last_name}"
end
# ---------------------------------
# Salespeople: 2
# Ben Block
# Brian Eng

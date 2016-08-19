##############DIRECTIONS######################
# Given a time in AM/PM format, convert it to military (-hour) time.
# Note: Midnight is 12:00:00AM on 12-hour clock, and 00:00:00 on a 24-hour clock. Noon is 12:00:00PM on a hour clock, and 12:00:00 on a -hour clock.

# Input Format: A single string containing a time in AM/PM

# Output Format: Military time string

# Convert and print the given time in -hour format, where .

# Sample Input
    # 07:05:45PM
# Sample Output
    # 19:05:45

#######PSUEDOCODE#############################



#examine last two indicies
    #IF == AM
        # DELETE time's last two indicies
        # RETURN new time
    #IF == PM
        # X VAR = add first two indicies ++ 12
        # REPLACE time's first two indicies with X
        # DELETE time's last two indicies
        # RETURN new time
    #END

######CODE####################################



time = "12:00:00AM"
time_array = time.chars
x = time_array[0].to_i + time_array[1].to_i

if time_array[8] == "P" && time_array[0] == "1" && time_array[1] == "2"
    #NOON
   time_array.slice!(-2..-1)
   puts time_array
elsif time_array[8] == "P"
   y = x + 12
            #delete first two numbers AND last two
   time_array.delete_at(0)
   time_array.delete_at(0)
   time_array.delete("P")
   time_array.delete("M")
            #add new number
   time_array.unshift(y)
            #convert to massive string
   puts time_array.join
elsif time_array[8] == "A" && time_array[0] == "1" && time_array[1] == "2"
    #MIDNIGHT
    time_array[0] = "0"
    time_array[1] = "0"
    time_array.delete("A")
    time_array.delete("M")
    puts time_array.join
else
   time_array.delete("A")
   time_array.delete("M")
   puts time_array.join
end

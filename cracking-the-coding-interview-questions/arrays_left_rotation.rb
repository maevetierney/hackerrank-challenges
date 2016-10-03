# Problem Title: Arrays: Left Rotation

  #note: found on hackerrank.com but is originally a problem featured in Cracking the Coding Interview.
#########################

# Objective :
  #A left rotation operation on an array of size shifts each of the arrays elements  unit to the left.

  #For example, if 2 left rotations are performed on array [1,2,3,4,5] , then the array would become [3,4,5,1,2].

  # Given an array of n integers and a number, d, perform d left rotations on the array.

  # Then print the updated array as a single line of space-separated integers.

  #Sample Input
    # 5 4
    # 1 2 3 4 5

  #Sample Output
    #5 1 2 3 4

########################

#Psuedocode:
  #A left rotation operation on an array of size shifts each of the arrays elements unit to the left.

  #For example, if 2 left rotations are performed on array [1,2,3,4,5] , then the array would become [3,4,5,1,2].

  # Given an array of n integers and a number, d, perform d left rotations on the array.

  # Then print the updated array as a single line of space-separated integers.

########################

#First Draft Experimentation

# def left_rotations(number_of_rotations)
#   array_of_n_integers = [1,2,3,4,5]
#
#   #D will become the number of 0's we are going to inject into the beginning of this array.
#   number_of_rotations.times do
#     array_of_n_integers.unshift(0)
#   end
#
#   #drop those 0's you added in (hint: its the first D number of indicies)
#   array_of_n_integers.reject! {|num| num == 0}
#   #this also returns the new array
# end
#
# left_rotations(3)

########################

#Second Draft really going for the answer
def left_rotations(number_of_rotations)
  array_of_n_integers = [1,2,3,4,5]
  current_indx = 0

  until current_indx == number_of_rotations
      #take first index's VALUE from the array
        index_to_be_switched = array_of_n_integers[0]
      #delete the first index's from the beginning of the array
        array_of_n_integers.shift
      #push current_indx to the end of the array
        array_of_n_integers << index_to_be_switched
      #increase rotation to next integer
      current_indx += 1
  end

  p array_of_n_integers

end

left_rotations(4)

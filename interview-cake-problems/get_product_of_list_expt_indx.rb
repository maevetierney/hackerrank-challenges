
## PSUEDOCODE #########

#Given:
    # A list of integers [1,7,3,4]
#Objective:
    # Return at each index the product for every number in that array, except itself
    # Example: [3x4x7, 1x4x7, 7x1x4...etc]
#rough


## CODE ###############

# def get_total_product_of_each_indx_in_array_excpet_itself(array)
#     current_index = 1
#     answer = 0

#     until array[-1] == array[current_index]
#         array.select do |num|
#           puts num
#           if num =! array[current_index]
#             puts current_index
#             answer *= num
#           end
#         end
#         current_index += 1
#     end
#   puts answer
# end
# test_array = [1,7,3,4]
# get_total_product_of_each_indx_in_array_excpet_itself(test_array)


# def get_total_product_of_each_indx_in_array_excpet_itself(array)
#     current_index = 0
#     answer = 0
#     max_index = array.length

#     p array.reduce(1, :*)
#     #(5..10).inject(1) { |product, n| product * n }
# end

#  (5..10).reduce(1, :*)


# test_array = [1,7,3,4]
# get_total_product_of_each_indx_in_array_excpet_itself(test_array)

def get_total_product_of_each_indx_in_array_excpet_itself(array)
  answer_array = []
  array.each_index do |index|
    new_array = array.select { |num| num != array[index] }
    indx_sum = new_array.reduce(1, :*)
    answer_array << indx_sum
  end
  puts answer_array
end


test_array = [1,7,3,4]
get_total_product_of_each_indx_in_array_excpet_itself(test_array)

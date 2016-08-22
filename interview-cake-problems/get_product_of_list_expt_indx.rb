
## PSUEDOCODE #########

#Given:
    # A list of integers [1,7,3,4]
#Objective:
    # Return at each index the product for every number in that array, except itself
    # Example: [3x4x7, 1x4x7, 7x1x4...etc]
#rough


## CODE ###############

def get_total_product_of_each_indx_in_array_excpet_itself(array)
    current_index = 0
    look at array[0]
    answer = 0

    until array[-1] == array[current_index]
        array.select do |index|
            if index != current_index
                answer *= array[index]
            end
        end
        current_index += 1
    end
end

puts get_total_product_of_each_indx_in_array_excpet_itself([1,7,3,4])

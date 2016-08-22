#######PSEUDOCODE######################

#first = n
#last = last # on each block
#look at each block
    #turn each block into a mini array
    #add the last # on each block to the LAST variable


# ######CODE############################

# n = 5
# arr = [1000000001, 1000000002, 1000000003, 1000000004, 1000000005]
# num_of_blocks = arr.length
# last = []
# new_arr = [0,0,0,0,0,0,0,0,0,0,]
# i = 0

# while i <= n
#     arr.map! do |chunk|
#         chunk.to_s.chars
#         chunk.to_s.chars.each do |num|
#             last << chunk.to_s.chars.last
#         end
#       i += 1
#     end
# end
# new_arr.unshift(n)
# new_arr.push(last)
# puts new_arr.join


#PLACE first with N
#PLACE last with last




arr = [1000000001, 1000000002, 1000000003, 1000000004, 1000000005]

n = arr.length
num_of_blocks = arr.length
last = []
new_num = [0,0,0,0,0,0,0,0,0,0]
#turn each chunk into an array
#each num to a single string
last = 0
total = arr.length
arr.each do |num|
  num_array = num.to_s.chars
  # print num_array
  last += num_array.last.to_i
end
new_num[0] = n
new_num[-1] = last
print new_num.join

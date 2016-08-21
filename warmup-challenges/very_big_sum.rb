#######PSEUDOCODE######################

#first = n
#last = last # on each block
#look at each block
    #turn each block into a mini array
    #add the last # on each block to the LAST variable


######CODE############################

n = 5
arr = [1000000001, 1000000002, 1000000003, 1000000004, 1000000005]
num_of_blocks = arr.length
last = []
new_arr = [0,0,0,0,0,0,0,0,0,0,]
i = 0
while i <= n
    arr.map! do |chunk|
        chunk.to_s.chars
        chunk.to_s.chars.each do |num|
            last << chunk.to_s.chars.last
            i += 1
        end
    end
end
new_arr.unshift(n)
new_arr.push(last)
new_arr.join


#PLACE first with N
#PLACE last with last

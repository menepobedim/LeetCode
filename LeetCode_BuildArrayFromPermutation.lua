function BuildArray(nums)
    local result = {}
    for i = 1, #nums, 1 do
        -- Lua nums[1, 2, 3 ... n], other nums[0, 1, 2 ... n] --> 0 + 1 = 1
        temp = nums[i] + 1
        result[#result + 1] = nums[temp]
    end
    return result
end

print(BuildArray({0,2,1,5,3,4}))
print(BuildArray({5,0,1,2,3,4}))


-- Print array
function out(array)
    for j = 0, #array, 1 do
        print(array[j])
    end
end

out(BuildArray({5,0,1,2,3,4}))
out(BuildArray({0,2,1,5,3,4}))
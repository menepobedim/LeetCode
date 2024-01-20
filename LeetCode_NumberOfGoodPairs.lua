function NumIdenticalPairs(nums) 
    local result = 0
    for i = 1, #nums - 1, 1 do
        for j = i + 1, #nums, 1 do
            if (nums[i] == nums[j]) then
                result = result + 1
            end
        end
    end
    return result
end

print(NumIdenticalPairs({1,2,3,1,1,3}))
print(NumIdenticalPairs({1,1,1,1}))
print(NumIdenticalPairs({1,2,3}))
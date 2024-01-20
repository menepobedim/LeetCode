function TwoSum(nums, target)
    local firstNumber, secondNumber
    for i = 1, #nums-1, 1 do
        for j = i + 1, #nums, 1 do
            if nums[i] + nums[j] == target then
                -- Lua nums[1, 2, 3 ... n], other nums[0, 1, 2 ... n] --> 1 - 1 = 0
                firstNumber = i - 1
                secondNumber = j - 1
                return firstNumber, secondNumber
            end
        end
    end
    return 0
end

print(TwoSum({2,7,11,15}, 9))
print(TwoSum({3,2,4}, 6))
print(TwoSum({3,3}, 6))
print(TwoSum({3,3, 3,3}, 6))

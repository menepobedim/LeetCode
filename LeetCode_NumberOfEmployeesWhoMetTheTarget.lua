function NumberOfEmployeesWhoMetTarget(hours, target)
    local counter = 0
    for i = 1, #hours, 1 do
        if hours[i] >= target then
            counter = counter + 1
        end
    end
    return counter
end

print(NumberOfEmployeesWhoMetTarget({0,1,2,3,4}, 2))
print(NumberOfEmployeesWhoMetTarget({5,1,4,2,2}, 6))
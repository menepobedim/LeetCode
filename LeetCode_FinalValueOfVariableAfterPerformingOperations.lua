function FinalValueAfterOperations(operations)
    local x = 0
    for i = 1, #operations, 1 do
        if operations[i] == "X++" or operations[i] == "++X" then
            x = x + 1
        elseif operations[i] == "X--" or operations[i] == "--X" then
            x = x - 1
        else
            x = x
        end
    end
    return x
end

print(FinalValueAfterOperations({"--X","X++","X++"}))
print(FinalValueAfterOperations({"++X","++X","X++"}))
print(FinalValueAfterOperations({"X++","++X","--X","X--"}))
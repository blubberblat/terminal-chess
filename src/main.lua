require("board")

currentSetup = board.defaultSetup

function convert(str) do
	local converted = {}
	for i in string.gmatch(str,"%a+") do
		table.insert(converted,i)
	end
	local reStr = ""
	for v,i in pairs(converted) do
		reStr = reStr .. string.sub(i,1,1)
	end
	return reStr
	end
end

function showBoard() do
	letters = {"a","b","c","d","e","f","g","h"}
	for i=1, 8 do
		if currentBoard[num]["a"] then
			if (i%2 == 0) then
				io.write(" "..currentBoard[num]["a"].." ")
			else 
				io.write("█"..currentBoard[num]["a"].."█")
			end
		else 
			if i%2 == 0 then
				io.write("    ")
			else
				io.write("████")
			end
		end
	end
end
end
showBoard()
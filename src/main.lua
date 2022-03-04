local gameInfo = {
    ["Name"] = "Chess",
    ["Version"] = "0.0.1",
    ["Creators"] = {"Bertie","Zaine"}
}

local defaultSetup = {
    [1] = {
        ["a"] = "black rook",
        ["b"] = "black knight",
        ["c"] = "black bishop",
        ["d"] = "black queen",
        ["e"] = "black king",
        ["f"] = "black bishop",
        ["g"] = "black knight",
        ["h"] = "black rook",
    },
    [2] = {
        ["a"] = " ",
        ["b"] = " ",
        ["c"] = " ",
        ["d"] = " ",
        ["e"] = " ",
        ["f"] = " ",
        ["g"] = " ",
        ["h"] = " ",
    },
    [3] = {
        ["a"] = " ",
        ["b"] = " ",
        ["c"] = " ",
        ["d"] = " ",
        ["e"] = " ",
        ["f"] = " ",
        ["g"] = " ",
        ["h"] = " ",
    },
    [4] = {
        ["a"] = " ",
        ["b"] = " ",
        ["c"] = " ",
        ["d"] = " ",
        ["e"] = " ",
        ["f"] = " ",
        ["g"] = " ",
        ["h"] = " ",
    },
    [5] = {
        ["a"] = " ",
        ["b"] = " ",
        ["c"] = " ",
        ["d"] = " ",
        ["e"] = " ",
        ["f"] = " ",
        ["g"] = " ",
        ["h"] = " ",
    },
    [6] = {
        ["a"] = " ",
        ["b"] = " ",
        ["c"] = " ",
        ["d"] = " ",
        ["e"] = " ",
        ["f"] = " ",
        ["g"] = " ",
        ["h"] = " ",
    },
    [7] = {
        ["a"] = " ",
        ["b"] = " ",
        ["c"] = " ",
        ["d"] = " ",
        ["e"] = " ",
        ["f"] = " ",
        ["g"] = " ",
        ["h"] = " ",
    },
    [8] = {
        ["a"] = "white rook",
        ["b"] = "white knight",
        ["c"] = "white bishop",
        ["d"] = "white queen",
        ["e"] = "white king",
        ["f"] = "white bishop",
        ["g"] = "white knight",
        ["h"] = "white rook",
    },
}

local funkyTestSetup = {
    [1] = {
        ["a"] = "black knight",
        ["b"] = "black bishop",
        ["c"] = "black rook",
        ["d"] = "black queen",
        ["e"] = "black king",
        ["f"] = "black rook",
        ["g"] = "black bishop",
        ["h"] = "black knight",
    },
    [2] = {
        ["a"] = " ",
        ["b"] = " ",
        ["c"] = " ",
        ["d"] = " ",
        ["e"] = " ",
        ["f"] = " ",
        ["g"] = " ",
        ["h"] = " ",
    },
    [3] = {
        ["a"] = " ",
        ["b"] = " ",
        ["c"] = " ",
        ["d"] = " ",
        ["e"] = " ",
        ["f"] = " ",
        ["g"] = " ",
        ["h"] = " ",
    },
    [4] = {
        ["a"] = " ",
        ["b"] = " ",
        ["c"] = " ",
        ["d"] = " ",
        ["e"] = " ",
        ["f"] = " ",
        ["g"] = " ",
        ["h"] = " ",
    },
    [5] = {
        ["a"] = " ",
        ["b"] = " ",
        ["c"] = " ",
        ["d"] = " ",
        ["e"] = " ",
        ["f"] = " ",
        ["g"] = " ",
        ["h"] = " ",
    },
    [6] = {
        ["a"] = " ",
        ["b"] = " ",
        ["c"] = " ",
        ["d"] = " ",
        ["e"] = " ",
        ["f"] = " ",
        ["g"] = " ",
        ["h"] = " ",
    },
    [7] = {
        ["a"] = " ",
        ["b"] = " ",
        ["c"] = " ",
        ["d"] = " ",
        ["e"] = " ",
        ["f"] = " ",
        ["g"] = " ",
        ["h"] = " ",
    },
    [8] = {
        ["a"] = "white knight",
        ["b"] = "white bishop",
        ["c"] = "white rook",
        ["d"] = "white queen",
        ["e"] = "white king",
        ["f"] = "white rook",
        ["g"] = "white bishop",
        ["h"] = "white knight",
    },
}
currentBoard = defaultSetup

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
	for num=1, 8 do
		if currentBoard[num]["a"] then
			if (num%2 == 0) then
				io.write(" "..currentBoard[num]["a"].." ")
			else 
				io.write("█"..currentBoard[num]["a"].."█")
			end
		else 
			if num%2 == 0 then
				io.write("    ")
			else
				io.write("████")
			end
		end
	end
end
end
showBoard()
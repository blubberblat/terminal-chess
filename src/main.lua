defaultSetup = {
	[1] = {
		["a"] = "white rook",
		["b"] = "white knight",
		["c"] = "white bishop",
		["d"] = "white queen",
		["e"] = "white king",
		["f"] = "white bishop",
		["g"] = "white knight",
		["h"] = "white rook",
	},
	[2] = {
		["a"] = "white pawn",
		["b"] = "white pawn",
		["c"] = "white pawn",
		["d"] = "white pawn",
		["e"] = "white pawn",
		["f"] = "white pawn",
		["g"] = "white pawn",
		["h"] = "white pawn",
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
		["a"] = "black pawn",
		["b"] = "black pawn",
		["c"] = "black pawn",
		["d"] = "black pawn",
		["e"] = "black pawn",
		["f"] = "black pawn",
		["g"] = "black pawn",
		["h"] = "black pawn",
	},
	[8] = {
		["a"] = "black rook",
		["b"] = "black knight",
		["c"] = "black bishop",
		["d"] = "black queen",
		["e"] = "black king",
		["f"] = "black bishop",
		["g"] = "black knight",
		["h"] = "black rook",
	},
}

currentBoard = defaultSetup

function convert(str)
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

function showBoard()
	letters = {"a","b","c","d","e","f","g","h"}
	for v,x in pairs(letters) do
		for i=1, 8 do
			if v%2 == 0 then
				if currentBoard[i][x] ~= " " and currentBoard[i][x] ~= nil then
					if i%2 == 0 then
						io.write("█"..convert(currentBoard[i][x]).."█")
					else 
						io.write(" "..convert(currentBoard[i][x]).." ")
					end
				else 
					if i%2 == 0 then
						io.write("████")
					else 
						io.write("    ")
					end
				end
			else 
				if currentBoard[i][x] ~= " " and currentBoard[i][x] ~= nil then
					if i%2 == 0 then
						io.write(" "..convert(currentBoard[i][x]).." ")
				else 
						io.write("█"..convert(currentBoard[i][x]).."█")
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
		print()
	end
end
showBoard()
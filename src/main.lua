
gameInfo = {
    ["Name"] = "Chess",
    ["Version"] = "0.0.1",
    ["Creators"] = {"Bertie","Zaine"}
}

defaultSetup = {
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

print(string.upper(convert("white queen")))
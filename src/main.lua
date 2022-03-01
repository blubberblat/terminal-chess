function convert(str) do
	local converted = {}
	for i in string.gmatch(str,"%a+") do
		table.insert(converted,i)
	end
	local reStr = ""
	for v,i in pairs(converted) do
		reStr = reStr .. string.upper(string.sub(i,1,1))
	end
	return reStr
	end
end

print(string.upper(convert("white queen")))
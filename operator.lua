--
-- Created by IntelliJ IDEA.
-- User: Aly
-- Date: 1/28/2017
-- Time: 9:13 PM
--
local M = {}

M.generator = function(n)
	local resul = {}

	local forCondition = function(input)
		return function(input, candidate)
			candidate = candidate + 1
			if input[1] >= candidate then
				return candidate
			end
		end, input, 1
	end

	local forCondition2 = function(input, candidate2)
		return function(input, candidate)
			if input[1] % candidate == 0 then
				input[1] = input[1]/candidate
				return candidate
			end
		end, input, candidate2
	end

	local input = {n}

	for candidate in forCondition(input) do
		for _ in forCondition2(input, candidate) do
			resul[#resul + 1] = candidate
		end
	end
	return resul
end

return M
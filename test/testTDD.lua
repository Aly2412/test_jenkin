--
-- Created by IntelliJ IDEA.
-- User: Aly
-- Date: 1/28/2017
-- Time: 8:57 PM
--

local luaunit = require('test.luaunit')
local operator, generator


Test = {
	setUp = function()
		operator = require "operator"
		generator = operator.generator
	end,
	testOne = function()
		luaunit.assertEquals(generator(1), {0})
		-- luaunit.assertEquals(generator(1), {})
	end,
	testTwo = function()
		luaunit.assertEquals(generator(2), { 2 })
	end,
	testFour = function()
		luaunit.assertEquals(generator(4), { 2, 2 })
	end,
	testFive = function()
		luaunit.assertEquals(generator(5), { 5 })
	end,
	testSix = function()
		luaunit.assertEquals(generator(6), { 2, 3 })
	end,
	testEight = function()
		luaunit.assertEquals(generator(8), { 2, 2, 2 })
	end,
	testNine = function()
		luaunit.assertEquals(generator(9), { 3, 3 })
	end,
	testTen = function()
		luaunit.assertEquals(generator(10), { 2, 5 })
	end,
	testBigNumber = function()
		luaunit.assertEquals(generator(120),{2,2,2,3,5})
	end
}
os.exit(luaunit.LuaUnit.run())

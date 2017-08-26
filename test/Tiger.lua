-- class Tiger ,bassed on simpleclass v0.1
local class = require "lib.simpleclass"
local Animal = require "Animal"


local Tiger = class('Tiger',Animal)

function Tiger:init(name)
	-- 派生类的初始化函数是否调用基类的初始化函数？

	self.name = ""
	self._TYPE = "ins of simpleclass"
	self.class = Tiger

	if name and type(name) == "string" then
		self.name = name
	end
end

function Tiger:say()
	print("I am a " .. self._CLASSNAME.." , " .. "my name is "..self.name .."。")
end

return Tiger

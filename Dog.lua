-- class Dog ,bassed on simpleclass v0.1
local class = require "lib.simpleclass"
local Animal = require "Animal"


local Dog = class('Dog',Animal)

function Dog:init(name)
	-- ������ĳ�ʼ�������Ƿ���û���ĳ�ʼ��������

	self.name = ""
	self._TYPE = "ins of simpleclass"
	self.class = Dog

	if name and type(name) == "string" then
		self.name = name
	end
end

function Dog:say()
	print("I am a " .. self._CLASSNAME.." , " .. "my name is "..self.name .."��")
end

return Dog

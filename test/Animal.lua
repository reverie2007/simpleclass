-- class Animal ,bassed on simpleclass v0.1
local class = require "lib.simpleclass"

local Animal = class('Animal')


function Animal:say()
	print("I am an ".. self._CLASSNAME)
end

return Animal

-- class Plant ,bassed on simpleclass v0.1
local class = require "lib.simpleclass"

local Plant = class('Plant')


function Plant:say()
	print("I am an ".. self._CLASSNAME)
end

return Plant

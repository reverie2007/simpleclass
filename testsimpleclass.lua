
local inspect = require "lib.inspect"

local Animal = require "Animal"
local Tiger = require "Tiger"
local Dog = require "Dog"
local Plant = require "Plant"

local animalnames = {'Giant Clam','Giant Panda Bear','Giant Schnauzer','Gibbon',
'Gila Monster','Giraffe','Glass Lizard','Glow Worm',
'Goat','Golden Lion Tamarin','Golden Oriole','Golden Retriever'}

local its = {}
math.randomseed(os.time())

for i = 1,10 do
	local c = math.random(3)
	if c == 1 then
		its[i] = Tiger(animalnames[i])
	elseif c == 2 then
		its[i] = Dog(animalnames[i])
	else
		its[i] = Plant()
	end

end

for k,v in pairs(its) do
	if v.is_a[Animal] then v:say() end
end







--print(inspect(a))






--print(inspect(_G))


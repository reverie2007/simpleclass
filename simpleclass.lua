--[[ simpleClass
	�򵥵ĵ�һ�̳���,single inheritance



--]]

local simpleClass = {
	_VERSION = 0.1;
	_DESCREPTION = [===[
		Wang Hongwei, email: 525269029@qq.com

	]===];

}

local function isValidClassName(name)
	-- ʲô�ǺϷ��������أ���û�б�Ҫ���������
	if type(name) == 'string' then
		local s = string.match(name,"[_%a][_%w]*")
		if (s == name) then
			return true
		end
	end
	return false
end

local function isClass(c)
	if type(c) == 'table' and c._TYPE =='simpleClass' then
		return true
	else
		return false
	end

end

local function creatclass(classname,baseclass)

	if not isValidClassName(classname) then error("invalid class name") end

	if baseclass and (not isClass(baseclass)) then error(tostring(baseclass)..'is not a valid class') end

	local cls = {}
	cls._TYPE = 'simpleClass'	-- ʹ��simpleclass�������඼��ӱ�ʶ���������ʶ�Ϳ�����������
	cls._VERSION = simpleClass._VERSION

	cls._CLASSNAME = classname	--������ʲô�����أ��������ֲ�ͬ������ͬ������,������is_a��
	cls.is_a = {}
	cls.is_a[cls] = true
	--cls.is_a[cls._CLASSNAME] = true


	local mt = {__call = function(c,...)
		local ins = {}
		setmetatable(ins,{__index = c})
		-- ���캯��
		local init = c.init
		if init and type(init) == "function" then
			init(ins,...)
		end

		return ins
	end}

	if baseclass then
		mt.__index = baseclass	--
		cls.base = baseclass
		-- �������is_a���Ƶ�������
		for v in pairs(baseclass.is_a) do
			cls.is_a[v] = true
		end
	end

	setmetatable(cls,mt)

	return cls
end

setmetatable(simpleClass,{__call = function(c,...)
	return creatclass(...)
end})


return simpleClass

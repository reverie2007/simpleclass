# simpleclass
lua simple class system


2,How to use?
-- 载入模块
local class = require 'simpleclass'

-- 使用类名创建一个新类
local Animal = class("Animao")

-- 也可以从指定派生类
local Tiger = class("Tiger",Animal)

-- 接下来就可以创建对象了
local tiger1 = Tiger()


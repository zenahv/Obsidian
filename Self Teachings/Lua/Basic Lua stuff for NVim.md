# Comments 

```Lua
-- this is a comment

--[[This is a comment
	On multiple lines
--]]

```

# Simple literal variables

```Lua
local number = 5

local string = "hello, world"
local single = 'also works'
local crazy = [[ This 
 is multi line and literal ]]
 
local truth, lies = true, false
 
local nothing = nil
```

# Functions

```Lua
local function hello(name) -- local function *function name*(*argument*)
	print("Hello !", name)
end

local greet = function(name)
	-- .. is string concatenation
	print("Greetins, " .. name .. "!")
end
```

The main two ways to define functions,
the second one showcases that functions holds a value

```Lua
local higher_order = function(value)
	return function(another)
		return value+another
	end
end

local add_one = higher_order(1)
print("add_one(2) -> ", add_one(2))
```

# Tables

Effectively, Lua's only data structure
- Same structure is used for maps (or dictionnaries) & lists

## As lists

```Lua
local list = { "first", 2, false, function() print("Fourth !") end }
print("Yup, 1 indexed :",list[1])
print("Fourth is 4... :",list[4]())

```

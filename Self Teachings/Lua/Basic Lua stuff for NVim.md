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
	print("Greetings, " .. name .. "!")
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

## As maps
```Lua
local t = {
	literal key = "a string",
	["an expression"] = "also works",
	[function() end] = true -1
}

print("literal key   :", t.literal key)
print("an expression :", t["an expression"])
print("function() end:", t[function() end]) -2
```

\# Output :
literal_key : a string
an expression : also works
function() end :

doesn't print anything because the function on line -1 is different from the one on line -2 (since we made it 2 different times), they point to different things


# Control flow

## for.loop()

```Lua
local favorite_foods = {"Pizza", "Udon", "おにぎり"}
for index = 1, #favorite_foods do
	print(index, favorite_foods[index])
end

for index, value in ipairs(favorite_foods) do
	print(index,value)
end
```

Both print the same result :

1 Pizza
2 Udon
3 おにぎり

```Lua
local correct_rating = { pain_au_chocolat = 20, chocolatine = "N/A"}
for index = 1, #correct_rating do
	print(correct_scores[index])
end
```

Doesn't print anything, the "length" of the Array is 0 
We're not using the table as an array, we're using it as a map

```Lua
local correct_rating = { pain_au_chocolat = 20, chocolatine = "N/A"}
for key, value in pairs(correct_rating) do
	print(key,value)
end
```

This is going to print what we wanted.

## if

```Lua
local function action(loves_yuri)
	if loves_yuri then
		print ("Check out nvim - it's cool !")
	else
		print ("Check out nvim - it's still cool !")
	end
end

-- "falsey"
action()
action(nil)
action(false)

-- Everything else is "truthy"
action(1)
action(0)
action({})
```

# Modules 

There's nothing special about them, it's just files
```lua
-- foo.lua
local M = {}
M.cool_function = function() end
return M

--bar.lua
local foo = require('foo')
foo.cool_function()
```

# Functions again

## Multiple values

```lua
local returns_four_values = function()
	return 1, 2, 3, 4
end

first, second, last = returns_four_values()

print("first :", first) --1
print("second :", second) --2
print("last :", last) --3
-- the `4` is discarded :'(
```

```lua
local variable_arguments = function (...)
	local arguments = { ... }
	for i, v in ipairs({...}) do print(i, v) end
	return unpack(arguments)
end

print("======================")
print("1:", variable_arguments("hello", "world", "!"))
print("======================")
print("2:", variable_arguments("hello", "world", "!"),"<lost>")
```

![[Lua - 1.png]]

We only have one "slot" for the arguments, so if we print "\<lost>" the other arguments will be discarded.

## Calling 

string shorthand

```Lua
local single_string = function(s)
	return s .. " - WOW!"
end

local x = single_string("hi")
local y = single_string "hi"
print (x, y)
```

Les parenthèses ne sont pas nécessaire quand on appelle un unique string

\# Output

hi - WOW!    hi - WOW!

---

Table Shorthand

```lua
local setup = function(opts)
	if opts.default == nil then
		opts.default = 17
	end
	
	print(opts.default, opts.other)
end

setup { default = 12, other = false}
setup { other = true }
```

Ceci est utilisé pour émuler le type option qui n'existe pas en Lua

\# Output

12  false
17  true

## Colon functions

```lua
local MyTable = {}

function MyTable.something(self,...) end
function MyTable:something(...) end
```

Lines 3 and 4 are equivalent

# Metatables

A metatable describes what a program should do under various scenarios within the language

```Lua
local vector_mt = {}
vector_mt.__add = function (left,right)
	return setmetatable({
		left[1] + right[1],
		left[2] + right[2],
		left[3] + right[3],
	}, vector_mt)
end

--- This will make it so when we add two tables, the function defines the result's behavior

local v1 = setmetatable({ 3, 1, 5}, vector_mt)
local v2 = setmetatable({ -3, 2, 2}, vector_mt)
local v3 = v1 + v2
vim.print (v3[1],v3[2],v3[3])
vim.print (v3+v3)
```

\# Output

0
3
7
{ 0, 6, 14,
	\<metatable> = {
		\_\_add = <function 1>
	}
}

---
```lua
local fib_mt = {
	__index = function(self,key)
		if key < 2 then return 1 end
		-- Update the table, to save the intermediate results
		self[key] = self[key - 2] + self[key - 1]
		--Return the results
		return self[key]
	end
}

local fib = setmetatable({}, fib_mt) --empty table (this is self in the function),                                         fib metatable

print(fib[5]) 
print(fib[1000])
```

\_\_index is called whenever you try to get a value from a table that doesn't exist

This is also an example or recursive calling

\# Output

8 
7.0330367711423$e\text{+}208$

<big>Other notable fields</big>

- \_\_newindex (self, key, value)
	This gets called when we do `self[key] = self[key - 2] + self[key - 1]` 
	We can change the behaviour if we wanted to
- \_\_call (self, ...)
	This lets you call a table as a function 

<big><big>This is pretty much everything to know to start writing lua
</big></big>

---
# Quick neovim stuff

```lua
vim.keymap.set("n", "<space><space>x", "<cmd>source %<CR>") -- This reads/executes the file you're in
vim.keymap.set("n", "<space>x", ":.lua<CR>") -- This only executes the current line
vim.keymap.set("v", "<space>x", ":lua<CR>") -- This executes the selected lines *in visual mode*
```

```Lua
vim.api.nvim_create_autocmd('TextYankPost', {
	desc = 'Highlight when yanking (copying) text',
	group = vim.api.nvim_create_autogroup('kickstart-highlight-yank', {clear = true });
	callback = function()
		vim.highlight.on_yank()
	end,
})
```

This will create an auto command that activates when the 'TextYankPost' occurs

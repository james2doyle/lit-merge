merge
=====

> Merge table 1 with table 2, handles nested tables

### Install

```sh
$ lit install james2doyle/merge
```

### Usage

```lua
local merge = require('merge')

local t1 = {a = 'hello', b = 'world'}
local t1addon = {c = 'goodbye', d = 'universe'}

p(merge(t1, t1addon)) -- { b = 'world', d = 'universe', a = 'hello', c = 'goodbye' }

local t2 = {a = 'hello', b = 'world'}

p(merge(t2, t2)) -- { a = 'hello', b = 'world' }

local t3 = {a = 'hello', b = 'world'}
local t3addon = {a = 'goodbye', b = 'world'}

p(merge(t3, t3addon)) -- {a = 'goodbye', b = 'world'}

local t4 = {a = 'hello', b = 'world'}
local t4addon = {c = t4, d = t1}

p(merge(t4, t4addon)) -- { b = 'world', d = { b = 'world', d = 'universe', a = 'hello', c = 'goodbye' }, a = 'hello', c = { a = 'hello', b = 'world' } }
```

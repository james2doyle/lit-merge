local merge = require('./init')

local t1 = {a = 'hello', b = 'world'}
local t1addon = {c = 'goodbye', d = 'universe'}

assert(merge(t1, t1addon), { b = 'world', d = 'universe', a = 'hello', c = 'goodbye' })

local t2 = {a = 'hello', b = 'world'}

assert(merge(t2, t2), { a = 'hello', b = 'world' })

local t3 = {a = 'hello', b = 'world'}
local t3addon = {a = 'goodbye', b = 'world'}

assert(merge(t3, t3addon), {a = 'goodbye', b = 'world'})

local t4 = {a = 'hello', b = 'world'}
local t4addon = {c = t4, d = t1}

assert(merge(t4, t4addon), { b = 'world', d = { b = 'world', d = 'universe', a = 'hello', c = 'goodbye' }, a = 'hello', c = { a = 'hello', b = 'world' } })

print('All tests passed successfully')
# PIN Hack for LB Phone [QB]

Code by Solan#6969, made into resource by Metal#1942

### Clip of how it works
(Will provide a new clip of it soon, as solans clip is "locked") (Metal)
#

### Dependencies:

```lua

-- qb-input
-- ps-ui
-- lb-phone with unique phone enabled

```



#   qb-core/shared/items.lua - add this item
```lua
['pinhack']                        = {['name'] = 'pinhack',                           ['label'] = 'pinhack',                 ['weight'] = 700,         ['type'] = 'item',         ['image'] = 'tablet.png',                 ['unique'] = true,         ['useable'] = true,     ['shouldClose'] = true,   ['combinable'] = nil,   ['description'] = 'A device to find pin code of a number.'},
```


# FYI - Compatibility of script
#   qb-core/shared/items.lua - add this item
```lua
I havent tested this with ox_inv, so IDK if it will work. Works with qb/lj-inv.
```
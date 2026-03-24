$execute positioned 0 0 0 positioned ~$(x) ~$(y) ~$(z) run setblock ~ ~ ~ air destroy
execute as @n[type=item] unless data entity @s Tags run kill @s
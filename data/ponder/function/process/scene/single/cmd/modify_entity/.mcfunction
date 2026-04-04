#过滤玩家，虽然原版也不能修改玩家nbt就是了
$execute as $(selector) as @s[type=!player] run data modify entity @s $(operation)
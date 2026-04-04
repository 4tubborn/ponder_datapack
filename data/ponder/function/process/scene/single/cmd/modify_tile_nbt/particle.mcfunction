$clone $(x) $(y) $(z) $(x) $(y) $(z) -5 -5 -5
#function ponder:logic/world/block/destroy/_ with storage ponder:scene cur_cmd
#将这个func的内容直接写到这里了
$setblock $(x) $(y) $(z) air destroy
execute as @n[type=item,distance=0..] unless data entity @s Tags run kill @s
$clone -5 -5 -5 -5 -5 -5 $(x) $(y) $(z)
$clone $(x) $(y) $(z) $(x) $(y) $(z) -5 -5 -5
#function ponder:logic/world/block/destroy/_ with storage ponder:scene cur_cmd
#将这个func的内容直接写到这里了
$setblock $(x) $(y) $(z) air destroy
#清除掉落物
function ponder:logic/world/block/destroy/kill
$clone -5 -5 -5 -5 -5 -5 $(x) $(y) $(z)
setblock -5 -5 -5 air
$data modify storage ponder:scene scene set from storage ponder:index scene."$(id)"

#tellraw @a ["scene_list: ",{storage:"ponder:scene",nbt:"scene"}]

#玩家进入ponder维度，同时初始化
function ponder:transport/enter

schedule function ponder:process/init/_ 4t
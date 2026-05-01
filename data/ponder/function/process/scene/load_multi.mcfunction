#say multi_scene

data remove storage ponder:scene cur_scene
data modify storage ponder:scene cur_scene set from storage ponder:scene scene[0]

execute unless data storage ponder:scene cur_scene run return 1
data remove storage ponder:scene scene[0]

#tellraw @a ["scene_list: ",{storage:"ponder:scene",nbt:"cur_scene"}]

function ponder:process/scene/single/next

#通过其他方法调用
#function ponder:process/scene/load_multi
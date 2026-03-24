#duration<int>：等待时长
execute if data storage ponder:scene {cur_cmd:{type:"idle"}} run return run function ponder:process/scene/single/cmd/idle
#blocks[]：存的方块符合标签：
#   x,y,z<double>：坐标
#   block_state：方块：
#       Name：方块id
#       Properties：方块状态
#   ponder_state<string>：setblock中的方块状态。eg：[facing=north]
execute if data storage ponder:scene {cur_cmd:{type:"setBlocks"}} run return run function ponder:process/scene/single/cmd/set_blocks
#f_x/y/z：起始坐标，t_x/y/z：结束坐标，direction<string>：方向
execute if data storage ponder:scene {cur_cmd:{type:"showSection"}} run return run execute as @n[type=marker,tag=ponder.block_area.anchor] at @s align xyz run function ponder:process/scene/single/cmd/show_section/
execute if data storage ponder:scene {cur_cmd:{type:"modifyBlock"}} run return run function
execute if data storage ponder:scene {cur_cmd:{type:"modifyTileNBT"}} run return run function
execute if data storage ponder:scene {cur_cmd:{type:"showText"}} run return run function
execute if data storage ponder:scene {cur_cmd:{type:"showOutline"}} run return run function
execute if data storage ponder:scene {cur_cmd:{type:"showControls"}} run return run function
execute if data storage ponder:scene {cur_cmd:{type:"createItemEntity"}} run return run function
execute if data storage ponder:scene {cur_cmd:{type:"createEntity"}} run return run function
execute if data storage ponder:scene {cur_cmd:{type:"removeEntity"}} run return run function
execute if data storage ponder:scene {cur_cmd:{type:"modifyEntity"}} run return run function
execute if data storage ponder:scene {cur_cmd:{type:"hideSection"}} run return run function
#execute if data storage ponder:scene {cur_cmd:{type:"rotateSection"}} run return run function
execute if data storage ponder:scene {cur_cmd:{type:"showIndependentSection"}} run return run function
execute if data storage ponder:scene {cur_cmd:{type:"hideIndependentSection"}} run return run function
execute if data storage ponder:scene {cur_cmd:{type:"showSectionAndMerge"}} run return run function
execute if data storage ponder:scene {cur_cmd:{type:"showIndependentSection"}} run return run function
execute if data storage ponder:scene {cur_cmd:{type:"makeSectionIndependent"}} run return run function
execute if data storage ponder:scene {cur_cmd:{type:"scaleSceneView"}} run return run function
execute if data storage ponder:scene {cur_cmd:{type:"rotateCamera"}} run return run function
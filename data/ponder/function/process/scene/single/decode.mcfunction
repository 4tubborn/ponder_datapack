#int duration：等待时长
execute if data storage ponder:scene {cur_cmd:{type:"idle"}} run return run function ponder:process/scene/single/cmd/idle/ with storage ponder:scene cur_cmd

execute if data storage ponder:scene {cur_cmd:{type:"show_base_plate_small"}} run return run function ponder:process/scene/single/cmd/show_base_plate/small/
#int pos[x1,y1,z1],坐标；string block_state：方块（包含方块状态和方块实体）eg. grass_block[snowy=true]
execute if data storage ponder:scene {cur_cmd:{type:"set_block"}} run return run function ponder:process/scene/single/cmd/set_block/

#int pos[x1,y1,z1,x2,y2,z2]起始坐标，结束坐标；string block_state：方块（包含方块状态和方块实体）eg. grass_block[snowy=true]
execute if data storage ponder:scene {cur_cmd:{type:"set_blocks"}} run return run function ponder:process/scene/single/cmd/set_blocks/

#int pos[x1,y1,z1,x2,y2,z2]起始坐标，结束坐标，direction<string>：方向
execute if data storage ponder:scene {cur_cmd:{type:"show_section"}} run return run execute as 1c595-1-c199-0-1 at @s align xyz run function ponder:process/scene/single/cmd/show_section/
execute if data storage ponder:scene {cur_cmd:{type:"modify_block"}} run return run execute as 1c595-1-c199-0-1 at @s align xyz run function ponder:process/scene/single/cmd/show_section/
execute if data storage ponder:scene {cur_cmd:{type:"modifyTileNBT"}} run return run function ponder:process/scene/single/cmd/idle/
execute if data storage ponder:scene {cur_cmd:{type:"showText"}} run return run function ponder:process/scene/single/cmd/idle/
execute if data storage ponder:scene {cur_cmd:{type:"showOutline"}} run return run function ponder:process/scene/single/cmd/idle/
execute if data storage ponder:scene {cur_cmd:{type:"showControls"}} run return run function ponder:process/scene/single/cmd/idle/
execute if data storage ponder:scene {cur_cmd:{type:"createItemEntity"}} run return run function ponder:process/scene/single/cmd/idle/
execute if data storage ponder:scene {cur_cmd:{type:"createEntity"}} run return run function ponder:process/scene/single/cmd/idle/
execute if data storage ponder:scene {cur_cmd:{type:"removeEntity"}} run return run function ponder:process/scene/single/cmd/idle/
execute if data storage ponder:scene {cur_cmd:{type:"modifyEntity"}} run return run function ponder:process/scene/single/cmd/idle/
execute if data storage ponder:scene {cur_cmd:{type:"hideSection"}} run return run function ponder:process/scene/single/cmd/idle/
#execute if data storage ponder:scene {cur_cmd:{type:"rotateSection"}} run return run function
execute if data storage ponder:scene {cur_cmd:{type:"showIndependentSection"}} run return run function ponder:process/scene/single/cmd/idle/
execute if data storage ponder:scene {cur_cmd:{type:"hideIndependentSection"}} run return run function ponder:process/scene/single/cmd/idle/
execute if data storage ponder:scene {cur_cmd:{type:"showSectionAndMerge"}} run return run function ponder:process/scene/single/cmd/idle/
execute if data storage ponder:scene {cur_cmd:{type:"showIndependentSection"}} run return run function ponder:process/scene/single/cmd/idle/
execute if data storage ponder:scene {cur_cmd:{type:"makeSectionIndependent"}} run return run function ponder:process/scene/single/cmd/idle/
execute if data storage ponder:scene {cur_cmd:{type:"scaleSceneView"}} run return run function ponder:process/scene/single/cmd/idle/
execute if data storage ponder:scene {cur_cmd:{type:"rotateCamera"}} run return run function ponder:process/scene/single/cmd/idle/
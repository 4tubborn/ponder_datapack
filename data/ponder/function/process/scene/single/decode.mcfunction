#*为可选项
#int duration：等待时长
execute if data storage ponder:scene {cur_cmd:{type:"idle"}} run return run function ponder:process/scene/single/cmd/idle/ with storage ponder:scene cur_cmd

execute if data storage ponder:scene {cur_cmd:{type:"show_base_plate_small"}} run return run function ponder:process/scene/single/cmd/show_base_plate/small/
#block:{block_state:{Name:"",*Properties:{}},x:<int>,y:<int>,z:<int>,*state:<string>} state为方块状态在setblock中的形式eg. [facing=north]
execute if data storage ponder:scene {cur_cmd:{type:"set_block"}} run return run function ponder:process/scene/single/cmd/set_block/

#blocks[]:{block_state:{Name:"",*Properties:{}},x:<int>,y:<int>,z:<int>,*state:<string>}
execute if data storage ponder:scene {cur_cmd:{type:"set_blocks"}} run return run function ponder:process/scene/single/cmd/set_blocks/

#*direction<string>：方向，放置set_block(s)的方块
execute if data storage ponder:scene {cur_cmd:{type:"show_section"}} run return run function ponder:process/scene/single/cmd/show_section/
#x,y,z,block:<string>，格式为<block_id>*[<block_state>]*{block_entity}，即与setblock ~ ~ ~ 后的内容相同。show_particle:<bool>，是否显示破坏粒子
execute if data storage ponder:scene {cur_cmd:{type:"modify_block"}} run return run function ponder:process/scene/single/cmd/modify_block/
#x:<int>,y:<int>,z:<int>,operation:<string>，格式为<目标nbt> 操作名称 后续数据（与data modify block ~ ~ ~ 后的内容相同）
execute if data storage ponder:scene {cur_cmd:{type:"modify_tile_nbt"}} run return run function ponder:process/scene/single/cmd/modify_tile_nbt/
#x:<int>,y:<int>,z:<int>,text:<文本组件>,*duration:<int>默认为30,*mode:<string>offset或者top_right，默认为offset
execute if data storage ponder:scene {cur_cmd:{type:"show_text"}} run return run function ponder:process/scene/single/cmd/show_text/
#x:<int>,y:<int>,z:<int> 锚点,*scale:[3]缩放，默认为[1,1,1], *duration:<int>默认为20,*color:<int>默认为0（白色），覆盖发光边框颜色，
#若为整型整型，则以十进制数字表示RGB颜色，即：Red<<16 + Green<<8 + Blue，最高8位对RGB颜色没有任何作用。
#若为NBT列表/JSON数组列表，则以3个浮点数表示RGB颜色,取值为[0, 1]。[<R>,<G>,<B>]，eg. [0,0.5,0]
execute if data storage ponder:scene {cur_cmd:{type:"show_outline"}} run return run function ponder:process/scene/single/cmd/show_outline/
#x:<int>,y:<int>,z:<int>,*duration:<int>默认为50，*right_click:<bool>,*middle_click:<bool>,*left_click:<bool>,*sprite:<string>，精灵图路径
execute if data storage ponder:scene {cur_cmd:{type:"show_control"}} run return run function ponder:process/scene/single/cmd/show_control/
#x:<int>,y:<int>,z:<int>,item:<物品格式>，即id,*count,*components，若不指定id则不会生成实体
execute if data storage ponder:scene {cur_cmd:{type:"create_item_entity"}} run return run function ponder:process/scene/single/cmd/create_item_entity/
#x:<int>,y:<int>,z:<int>,id:<entity_id>,*nbt:<nbt>,*no_ai:<bool>默认无ai
execute if data storage ponder:scene {cur_cmd:{type:"create_entity"}} run return run function ponder:process/scene/single/cmd/create_entity/
#selector:<目标选择器>
execute if data storage ponder:scene {cur_cmd:{type:"remove_entity"}} run return run function ponder:process/scene/single/cmd/remove_entity/ with storage ponder:scene cur_cmd
#selector:<目标选择器>,operation:<string>（与data modify entity @s 后的内容相同）
execute if data storage ponder:scene {cur_cmd:{type:"modify_entity"}} run return run function ponder:process/scene/single/cmd/modify_entity/ with storage ponder:scene cur_cmd
#blocks:[]{x:<int>,y:<int>,z:<int>},*direction:<string>方向
execute if data storage ponder:scene {cur_cmd:{type:"hide_section"}} run return run function ponder:process/scene/single/cmd/hide_section/
#execute if data storage ponder:scene {cur_cmd:{type:"rotateSection"}} run return run function
#execute if data storage ponder:scene {cur_cmd:{type:"showIndependentSection"}} run return run function ponder:process/scene/single/cmd/idle/
#execute if data storage ponder:scene {cur_cmd:{type:"hideIndependentSection"}} run return run function ponder:process/scene/single/cmd/idle/
#execute if data storage ponder:scene {cur_cmd:{type:"showSectionAndMerge"}} run return run function ponder:process/scene/single/cmd/idle/
#execute if data storage ponder:scene {cur_cmd:{type:"showIndependentSection"}} run return run function ponder:process/scene/single/cmd/idle/
#execute if data storage ponder:scene {cur_cmd:{type:"makeSectionIndependent"}} run return run function ponder:process/scene/single/cmd/idle/
#execute if data storage ponder:scene {cur_cmd:{type:"scaleSceneView"}} run return run function ponder:process/scene/single/cmd/idle/
#x,y,z,yaw,pitch
execute if data storage ponder:scene {cur_cmd:{type:"rotate_camera"}} run return run function ponder:process/scene/single/cmd/rotate_camera/
#run:命令
execute if data storage ponder:scene {cur_cmd:{type:"run_command"}} run return run function ponder:process/scene/single/cmd/run_command/
execute if score #timer ponder.timer matches 10 run function ponder:preset/base_plate_small
execute if score #timer ponder.timer matches 10 run return run function ponder:util/block/api/anim/fall

execute if score #timer ponder.timer matches 50 run data modify storage ponder:scene entity set value {x:0,y:1,z:1,id:"husk"}
execute if score #timer ponder.timer matches 50 run return run function ponder:util/entity/api/default_summon

execute if score #timer ponder.timer matches 60 run data modify storage ponder:scene block append value {x:1,y:1,z:1,block_state:{Name:"minecraft:oak_door",Properties:{half:lower}},ponder_state:"[half=lower]"}
execute if score #timer ponder.timer matches 60 run data modify storage ponder:scene block append value {x:1,y:2,z:1,block_state:{Name:"minecraft:oak_door",Properties:{half:upper}},ponder_state:"[half=upper]"}
execute if score #timer ponder.timer matches 60 run return run function ponder:util/block/api/anim/fall

execute if score #timer ponder.timer matches 100 run data modify storage ponder:scene destroy set value [{x:1,y:1,z:1,block_state:{Name:"minecraft:oak_door"}}]
execute if score #timer ponder.timer matches 100 run function ponder:util/block/api/destroy

execute if score #timer ponder.timer matches 100 run data modify storage ponder:scene text set value {x:0,y:2,z:2,text:{"text":"这是拉杆"},duration:60}
execute if score #timer ponder.timer matches 100 run return run function ponder:util/text/api/default



execute if score #timer ponder.timer matches 200 run data modify storage ponder:scene interaction.right_click set value {x:1,y:1,z:1}
execute if score #timer ponder.timer matches 200 run return run function ponder:util/interaction/api/right_click


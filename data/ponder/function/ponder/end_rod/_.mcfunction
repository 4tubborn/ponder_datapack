execute if score #timer ponder.timer matches 10 run function ponder:preset/base_plate_small
execute if score #timer ponder.timer matches 10 run return run function ponder:util/block/api/anim/fall

execute if score #timer ponder.timer matches 40 run function ponder:preset/template/base_plate
execute if score #timer ponder.timer matches 40 run return run function ponder:util/block/api/anim/fall

execute if score #timer ponder.timer matches 60 run data modify storage ponder:scene block append value {x:3,y:1,z:1,block_state:{Name:"minecraft:observer",Properties:{facing:west}},ponder_state:"[facing=west]"}
execute if score #timer ponder.timer matches 60 run data modify storage ponder:scene block append value {x:2,y:1,z:1,block_state:{Name:"minecraft:observer",Properties:{facing:east}},ponder_state:"[facing=east]"}
execute if score #timer ponder.timer matches 60 run data modify storage ponder:scene block append value {x:1,y:1,z:1,block_state:{Name:"minecraft:sticky_piston",Properties:{facing:west}},ponder_state:"[facing=west]"}
execute if score #timer ponder.timer matches 60 run data modify storage ponder:scene block append value {x:0,y:1,z:1,block_state:{Name:"minecraft:end_rod",Properties:{facing:west}},ponder_state:"[facing=west]"}
execute if score #timer ponder.timer matches 60 run return run function ponder:util/block/api/anim/fall

execute if score #timer ponder.timer matches 100 run data modify storage ponder:scene text set value {x:0,y:2,z:2,text:{"text":"这是拉杆"},duration:60}
execute if score #timer ponder.timer matches 100 run return run function ponder:util/text/api/default



#execute if score #timer ponder.timer matches 220 run return run summon husk 0 1 0

execute if score #timer ponder.timer matches 150 run data modify storage ponder:scene text set value {x:2,y:2,z:2,text:{"text":"右键拉杆"},duration:60}
execute if score #timer ponder.timer matches 150 run return run function ponder:util/text/api/default

execute if score #timer ponder.timer matches 200 run data modify storage ponder:scene interaction.right_click set value {x:1,y:1,z:1}
execute if score #timer ponder.timer matches 200 run return run function ponder:util/interaction/api/right_click

execute if score #timer ponder.timer matches 230 run data modify storage ponder:scene destroy set value [{x:1,y:1,z:1,block_state:{Name:"minecraft:oak_door"}}]
execute if score #timer ponder.timer matches 230 run return run function ponder:util/block/api/destroy
#say enter

#存储进入前的位置
summon marker ~ ~ ~ {Tags:["ponder.origin_pos"],UUID:[I;116117,111112,0,1]}
tp 1c595-1b208-0-0-1 @s

forceload add ~ ~
#存储进入前的游戏模式
#setblock ~ ~ ~ diamond_block
function ponder:logic/world/player/gamemode/store

#传送到ponder维度
tag @s add ponder.load
execute in ponder:ponder run tp @s 0.0 -10 0.0
gamemode spectator

#后续处理，也没法保证ponder维度被加载
function ponder:logic/ponder/load
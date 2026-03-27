say enter

#存储进入前的位置
summon marker ~ ~ ~ {Tags:["ponder.origin_pos"]}
forceload add ~ ~
#存储进入前的游戏模式
#setblock ~ ~ ~ diamond_block
function ponder:logic/world/player/gamemode/store

#传送到ponder维度
execute in ponder:ponder run tp @s 0.0 0.0 0.0

tag @s add ponder.load
#后续处理，等待1tick，保证ponder维度被加载
schedule function ponder:logic/ponder/load 1t
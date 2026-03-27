# 提取坐标到记分板
execute store result score #f.x ponder.utils.tmp run data get storage ponder:utils input.section.from_to.pos[0]
execute store result score #f.y ponder.utils.tmp run data get storage ponder:utils input.section.from_to.pos[1]
execute store result score #f.z ponder.utils.tmp run data get storage ponder:utils input.section.from_to.pos[2]

summon marker 0.0 0.0 0.0 {Tags:["ponder.utils.section.anchor"]}
#mc会取前3个项
data modify entity @n[type=marker,tag=ponder.utils.section.anchor,distance=0..] Pos set from storage ponder:utils input.section.from_to.pos

execute store result score #t.x ponder.utils.tmp run data get storage ponder:utils input.section.from_to.pos[3]
execute store result score #t.y ponder.utils.tmp run data get storage ponder:utils input.section.from_to.pos[4]
execute store result score #t.z ponder.utils.tmp run data get storage ponder:utils input.section.from_to.pos[5]

# 计算 X 的 Min 和 Max
scoreboard players operation #min.x ponder.utils.tmp = #f.x ponder.utils.tmp
execute if score #t.x ponder.utils.tmp < #min.x ponder.utils.tmp run scoreboard players operation #min.x ponder.utils.tmp = #t.x ponder.utils.tmp

scoreboard players operation #max.x ponder.utils.tmp = #f.x ponder.utils.tmp
execute if score #t.x ponder.utils.tmp > #max.x ponder.utils.tmp run scoreboard players operation #max.x ponder.utils.tmp = #t.x ponder.utils.tmp

# 计算 Y 的 Min 和 Max (以此类推)
scoreboard players operation #min.y ponder.utils.tmp = #f.y ponder.utils.tmp
execute if score #t.y ponder.utils.tmp < #min.y ponder.utils.tmp run scoreboard players operation #min.y ponder.utils.tmp = #t.y ponder.utils.tmp

scoreboard players operation #max.y ponder.utils.tmp = #f.y ponder.utils.tmp
execute if score #t.y ponder.utils.tmp > #max.y ponder.utils.tmp run scoreboard players operation #max.y ponder.utils.tmp = #t.y ponder.utils.tmp

# 计算 Z 的 Min 和 Max
scoreboard players operation #min.z ponder.utils.tmp = #f.z ponder.utils.tmp
execute if score #t.z ponder.utils.tmp < #min.z ponder.utils.tmp run scoreboard players operation #min.z ponder.utils.tmp = #t.z ponder.utils.tmp

scoreboard players operation #max.z ponder.utils.tmp = #f.z ponder.utils.tmp
execute if score #t.z ponder.utils.tmp > #max.z ponder.utils.tmp run scoreboard players operation #max.z ponder.utils.tmp = #t.z ponder.utils.tmp

# --- 接下来启动你的 NX 树遍历 ---
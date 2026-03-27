#筛选在from, to之间的点
# 获取当前步进点的绝对坐标 (假设你通过 align xyz 已经站在整数点了)
tp ~ ~ ~


execute store result score #curr.x ponder.utils.tmp run data get entity @s Pos[0]
execute store result score #curr.y ponder.utils.tmp run data get entity @s Pos[1]
execute store result score #curr.z ponder.utils.tmp run data get entity @s Pos[2]

# AABB 碰撞检测 (不在范围内就退出)
# 检查 X
execute if score #curr.x ponder.utils.tmp < #min.x ponder.utils.tmp run return fail
execute if score #curr.x ponder.utils.tmp > #max.x ponder.utils.tmp run return fail

# 检查 Y
execute if score #curr.y ponder.utils.tmp < #min.y ponder.utils.tmp run return fail
execute if score #curr.y ponder.utils.tmp > #max.y ponder.utils.tmp run return fail

# 检查 Z
execute if score #curr.z ponder.utils.tmp < #min.z ponder.utils.tmp run return fail
execute if score #curr.z ponder.utils.tmp > #max.z ponder.utils.tmp run return fail

# --- 既然通过了筛选，执行你的逻辑 ---

scoreboard players add #debug_count ponder.debug 1

#say runrunrun22222

$$(run)
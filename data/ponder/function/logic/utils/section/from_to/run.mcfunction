#nx树遍历所有可能的点
execute \
rotated as @e[type=marker,tag=ponder.utils.section.nx.hor,limit=2,distance=0..] positioned ^ ^ ^0.5 \
rotated as @e[type=marker,tag=ponder.utils.section.nx.hor,limit=2,distance=0..] positioned ^ ^ ^1 \
rotated as @e[type=marker,tag=ponder.utils.section.nx.hor,limit=2,distance=0..] positioned ^ ^ ^2 \
rotated as @e[type=marker,tag=ponder.utils.section.nx.hor,limit=2,distance=0..] positioned ^ ^ ^4 \
rotated as @e[type=marker,tag=ponder.utils.section.nx.hor,limit=2,distance=0..] positioned ^0.5 ^ ^ \
rotated as @e[type=marker,tag=ponder.utils.section.nx.hor,limit=2,distance=0..] positioned ^1 ^ ^ \
rotated as @e[type=marker,tag=ponder.utils.section.nx.hor,limit=2,distance=0..] positioned ^2 ^ ^ \
rotated as @e[type=marker,tag=ponder.utils.section.nx.hor,limit=2,distance=0..] positioned ^4 ^ ^ \
rotated as @e[type=marker,tag=ponder.utils.section.nx.ver,limit=2,distance=0..] positioned ^ ^ ^0.5 \
rotated as @e[type=marker,tag=ponder.utils.section.nx.ver,limit=2,distance=0..] positioned ^ ^ ^1 \
rotated as @e[type=marker,tag=ponder.utils.section.nx.ver,limit=2,distance=0..] positioned ^ ^ ^2 \
rotated as @e[type=marker,tag=ponder.utils.section.nx.ver,limit=2,distance=0..] positioned ^ ^ ^4 \
run execute as @n[tag=ponder.utils.section.executer,distance=0..] run function ponder:logic/utils/section/from_to/run_ with storage ponder:utils input.section.from_to
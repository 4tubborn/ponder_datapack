#nx树遍历所有可能的点
execute \
rotated as @n[type=marker,tag=ponder.utils.section.nx.hor] positioned ^ ^ ^0.5 \
rotated as @n[type=marker,tag=ponder.utils.section.nx.hor] positioned ^ ^ ^1 \
rotated as @n[type=marker,tag=ponder.utils.section.nx.hor] positioned ^ ^ ^2 \
rotated as @n[type=marker,tag=ponder.utils.section.nx.hor] positioned ^ ^ ^4 \
rotated as @n[type=marker,tag=ponder.utils.section.nx.hor] positioned ^ ^ ^8 \
rotated as @n[type=marker,tag=ponder.utils.section.nx.hor] positioned ^0.5 ^ ^ \
rotated as @n[type=marker,tag=ponder.utils.section.nx.hor] positioned ^1 ^ ^ \
rotated as @n[type=marker,tag=ponder.utils.section.nx.hor] positioned ^2 ^ ^ \
rotated as @n[type=marker,tag=ponder.utils.section.nx.hor] positioned ^4 ^ ^ \
rotated as @n[type=marker,tag=ponder.utils.section.nx.hor] positioned ^8 ^ ^ \
rotated as @n[type=marker,tag=ponder.utils.section.nx.ver] positioned ^ ^ ^0.5 \
rotated as @n[type=marker,tag=ponder.utils.section.nx.ver] positioned ^ ^ ^1 \
rotated as @n[type=marker,tag=ponder.utils.section.nx.ver] positioned ^ ^ ^2 \
rotated as @n[type=marker,tag=ponder.utils.section.nx.ver] positioned ^ ^ ^4 \
rotated as @n[type=marker,tag=ponder.utils.section.nx.ver] positioned ^ ^ ^8 \
run function ponder:logic/utils/section/from_to/run_ with storage ponder:utils input.section.from_to
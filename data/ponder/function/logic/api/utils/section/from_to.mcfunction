kill @e[type=marker,tag=ponder.utils.section.nx.hor,limit=10]
kill @e[type=marker,tag=ponder.utils.section.nx.ver,limit=10]
kill @e[type=marker,tag=ponder.utils.section.executer,limit=10]
kill @e[type=marker,tag=ponder.utils.section.anchor,limit=10]

scoreboard players set #debug_count ponder.debug 0

#tellraw @a ["pos: ",{entity:"@n[type=marker,tag=ponder.utils.section.anchor]",nbt:"Pos"}]

function ponder:logic/utils/section/from_to/summon
function ponder:logic/utils/section/from_to/store_anchor
execute positioned as @n[type=marker,tag=ponder.utils.section.anchor] align xyz run function ponder:logic/utils/section/from_to/run

#tellraw @a ["count: ",{score:{name:"#debug_count",objective:"ponder.debug"}}]
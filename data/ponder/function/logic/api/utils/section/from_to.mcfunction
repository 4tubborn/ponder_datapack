kill @e[type=marker,tag=ponder.utils.section.anchor,limit=10]
kill @e[type=marker,tag=ponder.utils.section.nx.hor,limit=10]
kill @e[type=marker,tag=ponder.utils.section.nx.ver,limit=10]
kill @e[type=marker,tag=ponder.utils.section.executer,limit=10]

function ponder:logic/utils/section/from_to/summon_entity with storage ponder:utils input.section.from_to
execute positioned as @n[type=marker,tag=ponder.utils.section.anchor] align xyz run function ponder:logic/utils/section/from_to/run
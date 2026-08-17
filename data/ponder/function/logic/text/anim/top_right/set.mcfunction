execute store result score @s ponder.timer run data get storage ponder:logic text.duration
scoreboard players set @s ponder.timer.in 4

rotate @s facing entity @p[tag=ponder.in_ponder]
tag @s remove ponder.init
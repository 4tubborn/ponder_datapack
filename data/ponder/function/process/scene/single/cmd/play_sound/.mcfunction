data modify storage ponder:logic play_sound set value {sound:"",category:"master",volume:1.0,pitch:1.0,min_volume:0.0}
data modify storage ponder:logic play_sound merge from storage ponder:scene cur_cmd

execute as @p[tag=ponder.in_ponder] at @s run function ponder:process/scene/single/cmd/play_sound/macro with storage ponder:logic play_sound
summon marker ~ ~ ~ {Tags:["ponder.interaction"]}

#setblock ~ ~1 ~ diamond_block

clone ~-1 ~-1 ~-1 ~1 ~1 ~1 0 0 -20

summon wind_charge 1.5 0.1 -18.5 {Motion:[0,-1,0]}

schedule function ponder:util/interaction/right_click/_ 2t
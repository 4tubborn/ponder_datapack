# 召唤初始状态
$setblock $(x) $(y) $(z) air

#say summoned_hiding
#因为interpolate的时候direction已经没了所以存到entity的data
$execute positioned 0.0 0.0 0.0 run summon block_display ~$(x) ~$(y) ~$(z) {\
    Tags:["ponder.scene_entity","ponder.init","ponder.anim.move"],\
    block_state:$(block_state),\
    data:{ponder:{anim:{direction:$(direction)},block:"$(block)"}},\
    interpolation_duration:$(duration),\
}

#say [LOG]summoned block display entity!!!!!!!!
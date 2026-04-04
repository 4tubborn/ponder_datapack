# 召唤初始状态

$execute positioned 0.0 0.0 0.0 run summon block_display ~$(x) ~$(y) ~$(z) {\
    Tags:["ponder.scene_entity","ponder.init","ponder.anim.show"],\
    block_state:$(block_state),\
    data:{ponder:{state:"$(state)"}},\
    transformation:{translation:$(direction),left_rotation:[0f,0f,0f,1f],scale:[1f,1f,1f],right_rotation:[0f,0f,0f,1f]}\
    \
}

#say [LOG]summoned block display entity!!!!!!!!
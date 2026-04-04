# 召唤初始状态

$summon block_display ~-0.5 ~-0.5 ~-0.5 {\
    Tags:["ponder.scene_entity","ponder.init","ponder.anim.show"],\
    block_state:$(block_state),\
    data:{ponder:{state:"$(state)"}},\
    transformation:{translation:$(direction),left_rotation:[0f,0f,0f,1f],scale:[1f,1f,1f],right_rotation:[0f,0f,0f,1f]}\
}

#say summoned block display entity!!!!!!!!
#在setBlock(s)时会利用marker进行同步 到~ ~ ~-100
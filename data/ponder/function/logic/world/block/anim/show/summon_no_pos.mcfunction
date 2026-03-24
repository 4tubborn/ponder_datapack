# 召唤初始状态

$summon block_display ~ ~ ~ {\
    Tags:["ponder.scene_entity","ponder.init"],\
    block_state:$(block_state),\
    data:{ponder_state:"$(ponder_state)"},\
    transformation:{translation:$(direction),left_rotation:[0f,0f,0f,1f],scale:[1f,1f,1f],right_rotation:[0f,0f,0f,1f]}\
    Passengers:[{id:"marker",Tags:["ponder.scene.block_sync"]}]\
}
#在setBlock(s)时会利用marker进行同步 到~ ~ ~-100
#say summoned TEXT DISPLAY!!!!!!!!!!!!!!!!!!!!!!
$execute positioned 0.0 0.0 0.0 run summon text_display ~$(x) ~$(y) ~$(z) {\
    Tags:["ponder.scene_entity","ponder.init","ponder.anim.text.offset","ponder.anim.cam_moving"],\
    see_through:true,\
    billboard:"center",\
    alignment:"$(alignment)",\
    teleport_duration:1,\
    transformation:{translation:[$(offset),0f,0f],left_rotation:[0f,0f,0f,1f],scale:[0f,0f,0f],right_rotation:[0f,0f,0f,1f]},\
    Passengers:[{\
        id:"block_display",\
        Tags:["ponder.scene_entity","ponder.init","ponder.anim.text.offset"],\
        block_state:{Name:"white_concrete"},\
        brightness:{block:13,sky:13},\
        billboard:"center",\
        teleport_duration:1,\
        transformation:{translation:[0.0f,0.0f,0.0f],left_rotation:[0f,0f,0f,1f],scale:[0.01f,0.01f,0.01f],right_rotation:[0f,0f,0f,1f]},\
    }],\
}

#rotate @n[type=text_display,tag=ponder.anim.text.offset] facing entity @p[tag=ponder.in_ponder] eyes

#execute rotated as @n[type=text_display,tag=ponder.camera] run rotate @n[type=block_display,tag=ponder.anim.text.offset] facing ^ ^ ^-1
data modify entity @n[type=text_display,tag=ponder.init,tag=ponder.anim.text.top_right] {} merge value \
{\
    transformation:{\
        translation:[0,0,0],\
        scale:[0.25,0.25,0.25],\
    },\
    start_interpolation: 0,\
    interpolation_duration: 5,\
    background:-16777216,\
}

tag @n[type=text_display,tag=ponder.init,tag=ponder.anim.text.top_right] remove ponder.init
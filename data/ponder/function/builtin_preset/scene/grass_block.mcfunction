data modify storage ponder:index scene."grass_block" set value [\
    [\  
        {type:"show_base_plate_small"},\
        {type:"set_blocks",pos:[0,0,0,5,0,5],block_state:"diamond_block"},\
        {type:"show_section",pos:[0,0,0,5,0,5],direction:"down"},\
        {type:"idle",duration:20},\
        {type:"set_block",pos:[1,1,1],block_state:"grass_block"},\
        {type:"idle",duration:20},\
        {type:"show_section",pos:[1,1,1,1,1,1],direction:"down"}\
    ]\
]
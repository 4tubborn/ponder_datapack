data modify storage ponder:index scene."grass_block" set value [\
    [\  
        {type:"show_base_plate_small"},\
        {type:"idle",duration:20},\
        {type:"set_blocks",blocks:[\
            {pos:[1,1,1],block_state:{Name:"grass_block"}},\
            {pos:[1,1,2],block_state:{Name:"observer",Properties:{facing:"west"}},state:"[facing=west]"},\
        ]},\
        {type:"set_block",block:{block_state:{Name:"diamond_block",Properties:{}},pos:[2,1,1]}},\
        {type:"show_section",direction:"down"},\
        {type:"idle",duration:30},\
        {type:"modify_block",pos:[1,1,1],block:"oak_shelf",show_particle:true},\
        {type:"idle",duration:20},\
        {type:"show_control",pos:[1,2,2],right_click:true},\
        {type:"show_text",pos:[1,1,2],text:{text:"Hello, world!"},duration:100},\
        {type:"idle",duration:10},\
        {type:"idle",duration:50},\
        {type:"modify_tile_nbt",pos:[1,1,1],operation:"Items[] set value {id:\"music_disc_cat\",count:1,Slot:0}",show_particle:true},\
        {type:"idle",duration:20},\
        {type:"create_entity",pos:[0,1,4],id:"villager",nbt:{}},\
        {type:"create_item_entity",pos:[0,1,0],item:{id:"apple"}},\
        {type:"idle",duration:20},\
        {type:"modify_entity",selector:"@n[type=villager,distance=0..]",operation:"Age set value -24000"},\
        {type:"show_text",text:{text:"注意到村民变小了"},duration:40,mode:"top_right"},\
        {type:"idle",duration:40},\
        {type:"remove_entity",selector:"@n[type=villager,distance=0..]"},\
        {type:"show_outline",pos:[2,1,1]},\
        {type:"idle",duration:20},\
        {type:"hide_section",blocks:[[2,1,1]]},\
        {type:"idle",duration:20},\
        {type:"show_control",pos:[1,2,2],right_click:true,middle_click:true,left_click:true,sprite:"block/glass"},\
    ]\
]
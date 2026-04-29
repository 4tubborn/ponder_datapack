data modify storage ponder:index scene."grass_block" set value [\
    [\  
        {type:"show_base_plate_small"},\
        {type:"idle",duration:20},\
        {type:"set_blocks",blocks:[\
            {x:1,y:1,z:1,block_state:{Name:"grass_block"}},\
            {x:1,y:1,z:2,block_state:{Name:"observer",Properties:{facing:"west"}},state:"[facing=west]"},\
        ]},\
        {type:"set_block",block:{block_state:{Name:"diamond_block",Properties:{}},x:2,y:1,z:1}},\
        {type:"show_section",direction:"down"},\
        {type:"idle",duration:30},\
        {type:"modify_block",x:1,y:1,z:1,block:"oak_shelf",show_particle:true},\
        {type:"idle",duration:20},\
        {type:"show_control",x:1,y:2,z:2,right_click:true},\
        {type:"show_text",x:1,y:1,z:2,text:{text:"Hello, world!"},duration:100},\
        {type:"idle",duration:10},\
        {type:"idle",duration:50},\
        {type:"modify_tile_nbt",x:1,y:1,z:1,operation:"Items[] set value {id:\"music_disc_cat\",count:1,Slot:0}",show_particle:true},\
        {type:"idle",duration:20},\
        {type:"create_entity",x:0,y:1,z:4,id:"villager"},\
        {type:"create_item_entity",x:0,y:1,z:0,item:{id:"apple"}},\
        {type:"idle",duration:20},\
        {type:"modify_entity",selector:"@n[type=villager,distance=0..]",operation:"Age set value -24000"},\
        {type:"show_text",x:1,y:1,z:2,text:{text:"注意到村民变小了"},duration:40,mode:"top_right"},\
        {type:"idle",duration:40},\
        {type:"remove_entity",selector:"@n[type=villager,distance=0..]"},\
        {type:"show_outline",x:2,y:1,z:1},\
        {type:"idle",duration:20},\
        {type:"hide_section",blocks:[{x:2,y:1,z:1}]},\
        {type:"idle",duration:20},\
        {type:"show_control",x:1,y:2,z:2,right_click:true,middle_click:true,left_click:true,sprite:"block/glass"},\
    ]\
]
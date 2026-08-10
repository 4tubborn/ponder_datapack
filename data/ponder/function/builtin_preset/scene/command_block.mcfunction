data modify storage ponder:index scene."command_block" set value [\
    [\
        {type:"show_base_plate_small"},\
        {type:"idle",duration:10},\
        {type:"create_entity",x:0,y:1,z:4,id:"creeper"},\
        {type:"set_block",block:{block_state:{Name:"diamond_block",Properties:{}},x:2,y:1,z:1}},\
        {type:"show_section",direction:"down"},\
        {type:"idle",duration:3},\
        {type:"set_block",block:{block_state:{Name:"diamond_block",Properties:{}},x:2,y:2,z:1}},\
        {type:"show_section",direction:"east"},\
        {type:"idle",duration:3},\
        {type:"set_block",block:{block_state:{Name:"diamond_block",Properties:{}},x:2,y:3,z:1}},\
        {type:"show_section"},\
        {type:"show_outline",x:2,y:1,z:1,duration:500},\
        {type:"idle",duration:40},\
        {type:"hide_section",blocks:[{x:2,y:1,z:1}],direction:"down"},\
        {type:"idle",duration:3},\
        {type:"hide_section",blocks:[{x:2,y:2,z:1}]},\
        {type:"idle",duration:3},\
        {type:"hide_section",blocks:[{x:2,y:3,z:1}]},\
        {type:"rotate_camera",x:3,y:0,z:3,yaw:60,pitch:10},\
    ]\
]

#        {type:"rotate_camera_y",angle:90},\
        {type:"idle",duration:80},\
        {type:"rotate_camera_x",angle:90},
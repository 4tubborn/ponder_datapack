data modify storage ponder:index scene."command_block" set value [\
    [\
        {type:"show_base_plate"},\
        {type:"idle",duration:10},\
        {type:"create_entity",pos:[0,1,4],id:"creeper"},\
        {type:"set_block",block:{block_state:{Name:"acacia_stairs",Properties:{}},pos:[2,1,1]}},\
        {type:"show_section",direction:"down"},\
        {type:"idle",duration:3},\
        {type:"set_block",block:{block_state:{Name:"diamond_block",Properties:{}},pos:[2,2,1]}},\
        {type:"show_section",direction:"east"},\
        {type:"idle",duration:3},\
        {type:"set_block",block:{block_state:{Name:"diamond_block",Properties:{}},pos:[2,3,1]}},\
        {type:"show_section"},\
        {type:"show_outline",pos:[2,1,1],duration:20},\
        {type:"idle",duration:40},\
        {type:"hide_section",blocks:[[2,1,1]],direction:"down"},\
        {type:"idle",duration:3},\
        {type:"hide_section",blocks:[[2,2,1]],direction:"north"},\
        {type:"idle",duration:3},\
        {type:"hide_section",blocks:[[2,3,1]]},\
        {type:"idle",duration:5},\
        {type:"create_item_entity",pos:[0,1,1],item:{id:"glass"},motion:"up"},\
        {type:"show_text",text:{text:"你好"},duration:40,mode:"top_right"},\
        {type:"idle",duration:25},\
        {type:"scale_camera",radius:4,add:true},\
        {type:"rotate_camera",pos:[3,0,3],yaw:60,pitch:0},\
        {type:"move_section",blocks:[[0,0,0],[1,0,0]],duration:20},\
        {type:"show_text",pos:[0,1,0],text:{text:"Hello, world!"},duration:100},\
        {type:"run_command",run:"say [Scene] Hello, world!"},\
    ]\
]

#{type:"rotate_camera",x:3,y:0,z:3,yaw:60,pitch:0},
#{type:"scale_camera",radius:1,add:true},
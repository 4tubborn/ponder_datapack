# 初始化并清空旧的方块列表
data modify storage ponder:logic block_show.blocks set value []

# 第一行 (x=0)
data modify storage ponder:logic block_show.blocks append value {x:0,y:0,z:0,block_state:{Name:"minecraft:snow_block"}}
data modify storage ponder:logic block_show.blocks append value {x:0,y:0,z:1,block_state:{Name:"minecraft:gray_concrete"}}
data modify storage ponder:logic block_show.blocks append value {x:0,y:0,z:2,block_state:{Name:"minecraft:snow_block"}}
data modify storage ponder:logic block_show.blocks append value {x:0,y:0,z:3,block_state:{Name:"minecraft:gray_concrete"}}
data modify storage ponder:logic block_show.blocks append value {x:0,y:0,z:4,block_state:{Name:"minecraft:snow_block"}}

# 第二行 (x=1)
data modify storage ponder:logic block_show.blocks append value {x:1,y:0,z:0,block_state:{Name:"minecraft:gray_concrete"}}
data modify storage ponder:logic block_show.blocks append value {x:1,y:0,z:1,block_state:{Name:"minecraft:snow_block"}}
data modify storage ponder:logic block_show.blocks append value {x:1,y:0,z:2,block_state:{Name:"minecraft:gray_concrete"}}
data modify storage ponder:logic block_show.blocks append value {x:1,y:0,z:3,block_state:{Name:"minecraft:snow_block"}}
data modify storage ponder:logic block_show.blocks append value {x:1,y:0,z:4,block_state:{Name:"minecraft:gray_concrete"}}

# 第三行 (x=2)
data modify storage ponder:logic block_show.blocks append value {x:2,y:0,z:0,block_state:{Name:"minecraft:snow_block"}}
data modify storage ponder:logic block_show.blocks append value {x:2,y:0,z:1,block_state:{Name:"minecraft:gray_concrete"}}
data modify storage ponder:logic block_show.blocks append value {x:2,y:0,z:2,block_state:{Name:"minecraft:snow_block"}}
data modify storage ponder:logic block_show.blocks append value {x:2,y:0,z:3,block_state:{Name:"minecraft:gray_concrete"}}
data modify storage ponder:logic block_show.blocks append value {x:2,y:0,z:4,block_state:{Name:"minecraft:snow_block"}}

# 第四行 (x=3)
data modify storage ponder:logic block_show.blocks append value {x:3,y:0,z:0,block_state:{Name:"minecraft:gray_concrete"}}
data modify storage ponder:logic block_show.blocks append value {x:3,y:0,z:1,block_state:{Name:"minecraft:snow_block"}}
data modify storage ponder:logic block_show.blocks append value {x:3,y:0,z:2,block_state:{Name:"minecraft:gray_concrete"}}
data modify storage ponder:logic block_show.blocks append value {x:3,y:0,z:3,block_state:{Name:"minecraft:snow_block"}}
data modify storage ponder:logic block_show.blocks append value {x:3,y:0,z:4,block_state:{Name:"minecraft:gray_concrete"}}

# 第五行 (x=4)
data modify storage ponder:logic block_show.blocks append value {x:4,y:0,z:0,block_state:{Name:"minecraft:snow_block"}}
data modify storage ponder:logic block_show.blocks append value {x:4,y:0,z:1,block_state:{Name:"minecraft:gray_concrete"}}
data modify storage ponder:logic block_show.blocks append value {x:4,y:0,z:2,block_state:{Name:"minecraft:snow_block"}}
data modify storage ponder:logic block_show.blocks append value {x:4,y:0,z:3,block_state:{Name:"minecraft:gray_concrete"}}
data modify storage ponder:logic block_show.blocks append value {x:4,y:0,z:4,block_state:{Name:"minecraft:snow_block"}}
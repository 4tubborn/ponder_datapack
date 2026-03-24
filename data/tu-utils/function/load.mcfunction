scoreboard objectives add tu-utils.out dummy
scoreboard objectives add tu-utils.in dummy
scoreboard objectives add tu-utils.tmp dummy
scoreboard objectives add tu-utils.num dummy
scoreboard players set #-1 tu-utils.num -1
scoreboard players set #2 tu-utils.num 2
scoreboard players set #10 tu-utils.num 10
scoreboard players set #100 tu-utils.num 100
scoreboard players set #1000 tu-utils.num 1000
scoreboard players set #10000 tu-utils.num 10000

#execute in ponder:ponder run summon marker 0.0 0.0 0.0 {Tags:["tu-utils.en"],UUID:[I;116117,0,0,1]}
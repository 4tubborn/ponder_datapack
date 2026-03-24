execute store result score #distance_comp1.x tu-utils.tmp run data get entity @n[tag=tu-utils.distance_anchor1] Pos[0] 1000
execute store result score #distance_comp1.y tu-utils.tmp run data get entity @n[tag=tu-utils.distance_anchor1] Pos[1] 1000
execute store result score #distance_comp1.z tu-utils.tmp run data get entity @n[tag=tu-utils.distance_anchor1] Pos[2] 1000

execute store result score #distance_comp2.x tu-utils.tmp run data get entity @n[tag=tu-utils.distance_anchor2] Pos[0] 1000
execute store result score #distance_comp2.y tu-utils.tmp run data get entity @n[tag=tu-utils.distance_anchor2] Pos[1] 1000
execute store result score #distance_comp2.z tu-utils.tmp run data get entity @n[tag=tu-utils.distance_anchor2] Pos[2] 1000

scoreboard players operation #distance_comp.x tu-utils.out = #distance_comp1.x tu-utils.tmp
scoreboard players operation #distance_comp.x tu-utils.out -= #distance_comp2.x tu-utils.tmp
execute if score #distance_comp.x tu-utils.out matches ..-1 run scoreboard players operation #distance_comp.x tu-utils.out *= #-1 tu-utils.num

scoreboard players operation #distance_comp.y tu-utils.out = #distance_comp1.y tu-utils.tmp
scoreboard players operation #distance_comp.y tu-utils.out -= #distance_comp2.y tu-utils.tmp
execute if score #distance_comp.y tu-utils.out matches ..-1 run scoreboard players operation #distance_comp.y tu-utils.out *= #-1 tu-utils.num

scoreboard players operation #distance_comp.z tu-utils.out = #distance_comp1.z tu-utils.tmp
scoreboard players operation #distance_comp.z tu-utils.out -= #distance_comp2.z tu-utils.tmp
execute if score #distance_comp.z tu-utils.out matches ..-1 run scoreboard players operation #distance_comp.z tu-utils.out *= #-1 tu-utils.num
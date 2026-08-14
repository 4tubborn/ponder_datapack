#p=remaing/total,1e3
scoreboard players set #p ponder.tmp 1000
scoreboard players operation #p ponder.tmp *= #remaining_radius ponder.scene.cam_scal
scoreboard players operation #p ponder.tmp /= #total_radius ponder.scene.cam_scal
#v = 4p(1-p) * V_max + o
#t1=1-p,1e3
scoreboard players set #t1 ponder.tmp 1000
scoreboard players operation #t1 ponder.tmp -= #p ponder.tmp
#tellraw @a ["remain r: ",{score:{name:"#remaining_radius",objective:"ponder.scene.cam_scal"}},", #total_radius: ",{score:{name:"#total_radius",objective:"ponder.scene.cam_scal"}},]
#tellraw @a ["p: ",{score:{name:"#p",objective:"ponder.tmp"}},", t1: ",{score:{name:"#t1",objective:"ponder.tmp"}},]

scoreboard players set #step_radius ponder.scene.cam_scal 4
scoreboard players operation #step_radius ponder.scene.cam_scal *= #p ponder.tmp
scoreboard players operation #step_radius ponder.scene.cam_scal *= #t1 ponder.tmp
scoreboard players operation #step_radius ponder.scene.cam_scal /= #1000 tu-utils.num

#tellraw @a ["cal1: ",{score:{name:"#step_radius",objective:"ponder.scene.cam_scal"}}]


scoreboard players operation #step_radius ponder.scene.cam_scal *= #cam.max_scaling_speed ponder.const
scoreboard players operation #step_radius ponder.scene.cam_scal /= #1000 tu-utils.num
scoreboard players operation #step_radius ponder.scene.cam_scal += #10 tu-utils.num

#tellraw @a ["cal2: ",{score:{name:"#step_radius",objective:"ponder.scene.cam_scal"}}]

#execute if score #step_radius ponder.scene.cam_scal matches 0 if score #remaining_radius ponder.scene.cam_scal matches 10.. run scoreboard players set #step_radius ponder.scene.cam_scal 1
#tellraw @a ["accel: ",{score:{name:"#accel",objective:"ponder.scene.cam_scal"}}]
#非最终停止时保底a=0.01
#execute if score #accel ponder.scene.cam_scal matches ..0 if score #p ponder.tmp matches 5.. run scoreboard players set #accel ponder.scene.cam_scal 1
#v_new=v_old+a
#scoreboard players operation #step_radius ponder.scene.cam_scal += #accel ponder.scene.cam_scal
#execute if score #step_radius ponder.scene.cam_scal matches ..-1 run scoreboard players set #step_radius ponder.scene.cam_scal 0
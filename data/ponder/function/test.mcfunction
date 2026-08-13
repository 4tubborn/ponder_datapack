#计算距离
tag 1c595-1-7b56-0-1 add tu-utils.distance_anchor1
tag 1c595-1-8319-0-1 add tu-utils.distance_anchor2
function tu-utils:distance/cal
#半径为距离
scoreboard players operation #radius ponder.scene.cam_rot = #distance tu-utils.out

tellraw @a ["r: ",{score:{name:"#radius",objective:"ponder.scene.cam_rot"}}]
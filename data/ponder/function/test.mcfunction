#execute if predicate {condition:"entity_properties",entity:"this",predicate:{type_specific:{type:"player",looking_at:{distance:{horizontal:0}}}}} run return run say 1
#say no
scoreboard players set #total_yaw ponder.scene.cam_rot 6000
scoreboard players set #total_pitch ponder.scene.cam_rot 1000
scoreboard players set #radius ponder.scene.cam_rot 7000

summon text_display 3 1 3 {Tags:["ponder.anchor"]}
rotate @n[tag=ponder.anchor] facing entity @n[tag=ponder.camera]
advancement revoke @s only ponder:logic/rot_cam

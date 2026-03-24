$data modify storage ponder:tmp template.block set from storage ponder:template block."$(name)"

$execute positioned 0.0 0.0 0.0 positioned ~$(x) ~$(y) ~$(z) run function ponder:util/block/template/

function ponder:util/block/api/anim/fall
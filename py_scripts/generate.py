import json
from beet import Context, Function

def data(sx, sz):
    return [
        {
            "x": x,
            "y": 0,
            "z": z,
            "block_state": {
                "Name": "minecraft:snow_block" if (x + z) % 2 == 0 else "minecraft:gray_concrete"
            }
        }
        for x in range(sx)
        for z in range(sz)
    ]

# 声明模板字符串
TEMPLATE = """# Auto-generated
data modify storage ponder:logic block_show.blocks set value {{ blocks | to_snbt }}
"""

def generate_checkerboard(ctx: Context):
    ctx.template.env.filters["to_snbt"] = json.dumps

    # 使用 render_string 直接渲染内联字符串
    ctx.data.functions["ponder:builtin_preset/block/base_plate_normal"] = Function(
        ctx.template.render_string(TEMPLATE, blocks=data(7, 7))
    )

    ctx.data.functions["ponder:builtin_preset/block/base_plate_large"] = Function(
        ctx.template.render_string(TEMPLATE, blocks=data(9, 9))
    )

    print("done!!!!")

def beet_default(ctx: Context):
    ctx.require(generate_checkerboard)
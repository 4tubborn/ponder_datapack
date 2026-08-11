import re

def beet_default(ctx):
    # 匹配：末尾的反斜杠 \ + 可能的空白 + 换行符 \n + 下一行开头的缩进/空白
    pattern = re.compile(r'\\\s*\n\s*')
    for func in ctx.data.functions.values():
        func.text = pattern.sub('', func.text)
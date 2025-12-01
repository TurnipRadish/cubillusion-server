# 玩家初始化函数

# 第一次加入游戏的玩家设置为冒险模式，并设置虚弱效果防止攻击生物
gamemode adventure @s
effect give @s weakness infinite 100 true

# 设置玩家的uid
scoreboard players add $cubi.base cubi_uid 1
scoreboard players operation @s cubi_uid = $cubi.base cubi_uid

# 新玩家提示信息
tellraw @a [{text:'', color:"yellow"}, {"text": "欢迎新玩家"}, {selector: "@s"}]

# 默认加入参观玩家组
team join cubi_player_sp @s

# 传送到主城位置
execute positioned 0.0 0.0 0.0 positioned over world_surface run tp @s ~ ~ ~

# 重设出生点
execute at @s run spawnpoint @s ~ ~ ~


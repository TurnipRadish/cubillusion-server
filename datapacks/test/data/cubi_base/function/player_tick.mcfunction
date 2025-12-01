# 玩家高频函数

# 如果玩家没有初始化cubi_uid分数，则执行初始化函数
execute unless score @s cubi_uid matches -2147483648..2147483647 run function cubi_base:player_init

# 保持参观玩家的游戏模式为冒险模式，同时保持虚弱效果
gamemode adventure @s[team=cubi_player_sp]
effect give @s[team=cubi_player_sp] weakness infinite 100 true

# 记分项创建
scoreboard objectives add cubi_uid dummy
scoreboard objectives add cubi_reload_flag dummy
scoreboard objectives add cubi_side_notice dummy
scoreboard objectives add var dummy

# 记分板侧边栏公告
scoreboard objectives setdisplay sidebar cubi_side_notice
scoreboard objectives modify cubi_side_notice numberformat blank
scoreboard objectives modify cubi_side_notice displayname [{text:"服务器公告",color:"yellow"}]
scoreboard players set $cubi.side_notice.1 cubi_side_notice 0
scoreboard players set $cubi.side_notice.2 cubi_side_notice -1
# scoreboard players add $cubi.base cubi_reload_flag 0

# 强加载，以放置全局（世界）实体等需要常加载的内容
forceload add -1 -1 1 1

# 设置普通玩家队伍
team add cubi_player_com
team modify cubi_player_com prefix {text:"[CM] ",color:"#a4a4a4"}

# 设置参观玩家队伍
team add cubi_player_sp
team modify cubi_player_sp prefix {text:"[SP] ",color:"#9abb9d"}

# 设置管理员玩家队伍
team add cubi_player_op
team modify cubi_player_op prefix {text:"[OP] ",color:"#db41cb"}

# 游戏规则
gamerule keep_inventory true
gamerule command_block_output false

# tick20计划
schedule function cubi_base:tick20 1s

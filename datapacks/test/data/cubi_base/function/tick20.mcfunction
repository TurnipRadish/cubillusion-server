# 统计服务器玩家总数
execute store result score $cubi.player_count var run execute if entity @a

# 更新侧边栏公告数据
scoreboard players display name $cubi.side_notice.2 cubi_side_notice [{"text": "当前玩家数："}, {score:{name:"$cubi.player_count", objective:"var"},color:"yellow"}]

# 循环执行（必须放在最后）
schedule function cubi_base:tick20 1s
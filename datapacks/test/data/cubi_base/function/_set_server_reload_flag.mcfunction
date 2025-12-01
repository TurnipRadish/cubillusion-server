# 该函数由服务器控制台执行（由github action控制）

scoreboard players set $cubi.base cubi_reload_flag 1

scoreboard players display name $cubi.side_notice.1 cubi_side_notice [{"text": "服务器状态："}, {text:"[同步中]", color:"red"}]

# function cubi_base:_set_server_reload_flag
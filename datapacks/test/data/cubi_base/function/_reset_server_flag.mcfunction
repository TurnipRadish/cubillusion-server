# 该函数由服务器控制台执行（由github action控制）

scoreboard players reset $cubi.base cubi_reload_flag

scoreboard players display name $cubi.side_notice.1 cubi_side_notice [{"text": "服务器状态："}, {text:"[正常]", color:"green"}]

# function cubi_base:_reset_server_flag
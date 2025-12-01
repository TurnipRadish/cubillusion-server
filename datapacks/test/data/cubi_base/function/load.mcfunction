scoreboard objectives add cubi_uid dummy
scoreboard objectives add cubi_reload_flag dummy
scoreboard objectives add cubi_side_notice dummy
scoreboard objectives add var dummy

scoreboard objectives setdisplay sidebar cubi_side_notice
scoreboard objectives modify cubi_side_notice numberformat blank
scoreboard objectives modify cubi_side_notice displayname [{text:"服务器公告",color:"yellow"}]
scoreboard players set $cubi.side_notice.1 cubi_side_notice 0
scoreboard players set $cubi.side_notice.2 cubi_side_notice -1
# scoreboard players add $cubi.base cubi_reload_flag 0


forceload add -1 -1 1 1

team add cubi_player_com
team modify cubi_player_com prefix {text:"[CM] ",color:"#a4a4a4"}

team add cubi_player_sp
team modify cubi_player_sp prefix {text:"[SP] ",color:"#9abb9d"}

team add cubi_player_op
team modify cubi_player_op prefix {text:"[OP] ",color:"#db41cb"}

gamerule keep_inventory true




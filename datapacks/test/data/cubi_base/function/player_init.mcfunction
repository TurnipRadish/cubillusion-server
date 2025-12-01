scoreboard players add $cubi.base cubi_uid 1

scoreboard players operation @s cubi_uid = $cubi.base cubi_uid

tellraw @a [{text:'', color:"yellow"}, {"text": "欢迎新玩家"}, {selector: "@s"}]

gamemode adventure @s

team join cubi_player_com @s

execute positioned 0.0 0.0 0.0 positioned over world_surface run tp @s ~ ~ ~

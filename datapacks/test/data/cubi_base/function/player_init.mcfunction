gamemode adventure @s
effect give @s weakness infinite 100 true

scoreboard players add $cubi.base cubi_uid 1

scoreboard players operation @s cubi_uid = $cubi.base cubi_uid

tellraw @a [{text:'', color:"yellow"}, {"text": "欢迎新玩家"}, {selector: "@s"}]

team join cubi_player_com @s

execute positioned 0.0 0.0 0.0 positioned over world_surface run tp @s ~ ~ ~


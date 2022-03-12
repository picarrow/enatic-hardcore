scoreboard objectives add selections dummy "TEAM ID'S"

team join aqua $Aqua
team join dark_aqua $Dark_Aqua
team join blue $Blue
team join dark_blue $Dark_Blue
team join purple $Purple
team join dark_purple $Dark_Purple
team join red $Red
team join dark_red $Dark_Red
team join yellow $Yellow
team join dark_yellow $Dark_Yellow
team join green $Green
team join dark_green $Dark_Green
team join dark_gray $Spectator

scoreboard players set $Aqua selections 12
scoreboard players set $Dark_Aqua selections 11
scoreboard players set $Blue selections 10
scoreboard players set $Dark_Blue selections 9
scoreboard players set $Purple selections 8
scoreboard players set $Dark_Purple selections 7
scoreboard players set $Red selections 6
scoreboard players set $Dark_Red selections 5
scoreboard players set $Yellow selections 4
scoreboard players set $Dark_Yellow selections 3
scoreboard players set $Green selections 2
scoreboard players set $Dark_Green selections 1
scoreboard players set $Solo selections 0
scoreboard players set $Spectator selections -1

scoreboard objectives setdisplay sidebar selections

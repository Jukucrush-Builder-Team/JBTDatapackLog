tellraw @a[tag=DEV] [{"text":"MDataClock : ","color":"red"},{"text":"Enable","color":"green","bold":true}]
scoreboard objectives add mdataclock dummy
execute unless score Sec mdataclock matches 0.. run function mdataclock:main
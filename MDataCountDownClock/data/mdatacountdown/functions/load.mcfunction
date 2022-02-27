tellraw @a[tag=DEV] [{"text":"MDataSportday : ","color":"red"},{"text":"Enable","color":"green","bold":true}]
scoreboard objectives add mdataclockdown dummy
execute unless score Sec mdataclockdown matches 0.. run function mdatacountdown:main
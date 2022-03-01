##function
schedule function mdatacountdown:main 20t replace
function mdatacountdown:displayupdate

##Timing
execute unless score Sec1 mdataclockdown matches ..-1 run scoreboard players remove Sec1 mdataclockdown 1
execute if score Sec1 mdataclockdown matches ..-1 unless score Sec2 mdataclockdown matches ..-1 run scoreboard players remove Sec2 mdataclockdown 1
execute if score Sec1 mdataclockdown matches ..-1 unless score Sec2 mdataclockdown matches ..-1 run scoreboard players set Sec1 mdataclockdown 9
execute if score Sec2 mdataclockdown matches ..-1 unless score Minute1 mdataclockdown matches ..-1 run scoreboard players remove Minute1 mdataclockdown 1
execute if score Sec2 mdataclockdown matches ..-1 unless score Minute1 mdataclockdown matches ..-1 run scoreboard players set Sec1 mdataclockdown 9
execute if score Sec2 mdataclockdown matches ..-1 unless score Minute1 mdataclockdown matches ..-1 run scoreboard players set Sec2 mdataclockdown 5
execute if score Minute1 mdataclockdown matches ..-1 unless score Minute2 mdataclockdown matches ..-1 run scoreboard players remove Minute2 mdataclockdown 1
execute if score Minute1 mdataclockdown matches ..-1 unless score Minute2 mdataclockdown matches ..-1 run scoreboard players set Sec1 mdataclockdown 9
execute if score Minute1 mdataclockdown matches ..-1 unless score Minute2 mdataclockdown matches ..-1 run scoreboard players set Sec2 mdataclockdown 5
execute if score Minute1 mdataclockdown matches ..-1 unless score Minute2 mdataclockdown matches ..-1 run scoreboard players set Minute1 mdataclockdown 9
execute if score Sound mdataclockdown matches 1.. as @a at @s run playsound ui.button.click master @a ~ ~ ~ .7 1 .7
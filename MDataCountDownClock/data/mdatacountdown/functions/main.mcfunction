schedule function mdatacountdown:main 20t replace
execute unless score Sec1 mdataclockdown matches ..-1 run scoreboard players remove Sec1 mdataclockdown 1
execute if score Sec1 mdataclockdown matches ..-1 unless score Sec2 mdataclockdown matches ..-1 run scoreboard players remove Sec2 mdataclockdown 1
execute if score Sec1 mdataclockdown matches ..-1 unless score Sec2 mdataclockdown matches ..-1 run scoreboard players add Sec1 mdataclockdown 10

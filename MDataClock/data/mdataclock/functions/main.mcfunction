schedule function mdataclock:main 20t replace
scoreboard players add Sec mdataclock 1
execute if score Sec mdataclock matches 60.. run scoreboard players add minute1 mdataclock 1
execute if score Sec mdataclock matches 60.. run scoreboard players remove Sec mdataclock 60
execute if score minute1 mdataclock matches 10.. run scoreboard players add minute2 mdataclock 1
execute if score minute1 mdataclock matches 10.. run scoreboard players remove minute1 mdataclock 10
execute if score minute2 mdataclock matches 6.. run scoreboard players add hour1 mdataclock 1
execute if score minute2 mdataclock matches 6.. run scoreboard players remove minute2 mdataclock 6
execute if score hour1 mdataclock matches 9.. run scoreboard players add hour2 mdataclock 1
execute if score hour1 mdataclock matches 9.. run scoreboard players remove hour1 mdataclock 9
execute if score hour2 mdataclock matches 2.. if score hour1 mdataclock matches 4.. run function mdataclock:24hourmilestone
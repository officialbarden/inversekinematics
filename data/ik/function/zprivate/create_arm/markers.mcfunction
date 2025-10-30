summon marker ~ ~ ~ {Tags:[ik.NEW,ik.ARM.BASE,ik.ARM.UUID]}
summon marker ~ ~ ~ {Tags:[ik.NEW,ik.ARM.TARGET]}

#> Give the Same Tags:
scoreboard players operation @e[tag=ik.NEW] ik.ARM.ID = .GLOBAL ik.ARM.ID
scoreboard players add .GLOBAL ik.ARM.ID 1
tag @e[tag=ik.NEW] remove ik.NEW

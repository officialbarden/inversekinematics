$execute as @e[tag=ik.ARM.SEGMENT.$(SEGMENT),type=item_display,predicate=ik:id/main] at @s run data modify storage ik:storage TEMP.MACRO.IK.LENGTH set from entity @s data.ik.LENGTH
$execute as @e[tag=ik.ARM.SEGMENT.$(SEGMENT),type=item_display,predicate=ik:id/main] at @s run function ik:zprivate/ik/main with storage ik:storage TEMP.MACRO.IK

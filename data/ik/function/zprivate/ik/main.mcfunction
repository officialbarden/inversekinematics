scoreboard players remove $TotalSegments ik.TEMP 1
scoreboard players add $CurrentSegment ik.TEMP 1
scoreboard players add $LaterSegment ik.TEMP 1

execute as @s[tag=ik.ARM.SEGMENT.1,type=item_display,predicate=ik:id/main] at @s facing entity @n[tag=ik.ARM.TARGET,predicate=ik:id/main,type=marker] eyes rotated ~ ~ run rotate @s ~ ~
execute as @s[tag=ik.ARM.SEGMENT.1,type=item_display,predicate=ik:id/main] at @s run tp @s @n[tag=ik.ARM.TARGET,predicate=ik:id/main,type=marker]
$execute as @s[tag=ik.ARM.SEGMENT.1,type=item_display,predicate=ik:id/main] at @s run tp ^ ^ ^-$(LENGTH)
execute as @s[tag=ik.ARM.SEGMENT.1] run return run function ik:zprivate/ik/increment

$execute as @s[tag=ik.ARM.SEGMENT.$(SEGMENT),type=item_display,predicate=ik:id/main] at @s facing entity @n[tag=ik.ARM.SEGMENT.$(LATER_SEGMENT),type=item_display,predicate=ik:id/main] eyes rotated ~ ~ run rotate @s ~ ~
$execute as @s[tag=ik.ARM.SEGMENT.$(SEGMENT),type=item_display,predicate=ik:id/main] at @s run tp @s @n[tag=ik.ARM.SEGMENT.$(LATER_SEGMENT),type=item_display,predicate=ik:id/main]
$execute as @s[tag=ik.ARM.SEGMENT.$(SEGMENT),type=item_display,predicate=ik:id/main] at @s run tp ^ ^ ^-$(LENGTH)



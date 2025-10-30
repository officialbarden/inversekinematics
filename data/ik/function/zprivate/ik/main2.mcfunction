$execute if score $CurrentSegment ik.TEMP = $TotalSegments ik.TEMP as @s[tag=ik.ARM.SEGMENT,predicate=ik:id/main,type=item_display] facing entity @n[tag=ik.ARM.BASE,predicate=ik:id/main,type=marker] eyes rotated ~ ~ at @n[tag=ik.ARM.BASE,predicate=ik:id/main,type=marker] run tp @s ^ ^ ^-$(LENGTH)
scoreboard players remove $CurrentSegment ik.TEMP 1
scoreboard players remove $PreviousSegment ik.TEMP 1
$execute as @s[tag=ik.ARM.SEGMENT.$(SEGMENT),predicate=ik:id/main,type=item_display] at @s facing entity @n[tag=ik.ARM.SEGMENT.$(PREVIOUS_SEGMENT),predicate=ik:id/main,type=item_display] eyes ~ ~ at @n[tag=ik.ARM.SEGMENT.$(PREVIOUS_SEGMENT),predicate=ik:id/main,type=item_display] run tp @s ^ ^ ^-$(LENGTH)

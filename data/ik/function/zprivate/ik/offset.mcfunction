$execute as @s[tag=ik.ARM.SEGMENT.1] rotated as @n[tag=ik.ARM.SEGMENT.2,predicate=ik:id/main,type=item_display] at @n[tag=ik.ARM.SEGMENT.2,predicate=ik:id/main,type=item_display] positioned ^ ^ ^$(PREVIOUS_SEGMENT_LENGTH) run tp @s ~ ~ ~

$execute as @s[tag=ik.ARM.SEGMENT.$(SEGMENT)] rotated as @n[tag=ik.ARM.SEGMENT.$(PREVIOUS_SEGMENT),predicate=ik:id/main,type=item_display] at @n[tag=ik.ARM.SEGMENT.2,predicate=ik:id/main,type=item_display] positioned ^ ^ ^$(PREVIOUS_SEGMENT_LENGTH) run tp @s ~ ~ ~

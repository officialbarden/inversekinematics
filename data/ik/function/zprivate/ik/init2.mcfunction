# // Get total number of segments + start from 1 to macro every segment.
execute store result score $TotalSegments ik.TEMP if entity @e[tag=ik.ARM.SEGMENT,predicate=ik:id/main,type=item_display]
scoreboard players operation $CurrentSegment ik.TEMP = $TotalSegments ik.TEMP
scoreboard players operation $PreviousSegment ik.TEMP = $TotalSegments ik.TEMP
scoreboard players remove $PreviousSegment ik.TEMP 1

execute store result storage ik:storage TEMP.MACRO.IK.SEGMENT int 1 run scoreboard players get $CurrentSegment ik.TEMP
execute store result storage ik:storage TEMP.MACRO.IK.PREVIOUS_SEGMENT int 1 run scoreboard players get $PreviousSegment ik.TEMP
function ik:zprivate/ik/select2 with storage ik:storage TEMP.MACRO.IK
function ik:zprivate/ik/main2 with storage ik:storage TEMP.MACRO.IK

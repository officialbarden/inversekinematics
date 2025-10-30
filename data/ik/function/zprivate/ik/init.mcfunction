#> ID Predicate
scoreboard players operation #ID ik.ARM.ID = @s ik.ARM.ID

# // Get total number of segments + start from 1 to macro every segment.
execute store result score $TotalSegments ik.TEMP if entity @e[tag=ik.ARM.SEGMENT,predicate=ik:id/main,type=item_display]
scoreboard players set $CurrentSegment ik.TEMP 1
scoreboard players set $LaterSegment ik.TEMP 0
execute store result storage ik:storage TEMP.MACRO.IK.SEGMENT int 1 run scoreboard players get $CurrentSegment ik.TEMP
execute store result storage ik:storage TEMP.MACRO.IK.LATER_SEGMENT int 1 run scoreboard players get $LaterSegment ik.TEMP

# IK Algorithm:
    #> RUN IK Algorithm for Segment
    function ik:zprivate/ik/select with storage ik:storage TEMP.MACRO.IK
    function ik:zprivate/ik/init2

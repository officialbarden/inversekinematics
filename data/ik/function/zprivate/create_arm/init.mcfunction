$summon item_display ~ ~ ~ {data:{ik:{length:$(length)}}, Tags:[ik.NEW,ik.ARM.SEGMENT,ik.ARM.SEGMENT.$(SegmentNumber)], item: $(item), transformation: {left_rotation: [0.707f, 0.0f, 0.0f, 0.707f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1f, 1f, 1f], translation: [0.0f, 0.0f, 0.5f]}}

#> Prevent Infinite Duplication
data remove storage ik:storage IK.TEMP.SPAWN.SEGMENTS[0]

#> Update Segment Count:
scoreboard players add $SegmentCount ik.TEMP 1
execute store result storage ik:storage IK.TEMP.SPAWN.SEGMENTS[0].SegmentNumber int 1 run scoreboard players get $SegmentCount ik.TEMP

#> Loop
execute if data storage ik:storage IK.TEMP.SPAWN.SEGMENTS[0] run function ik:zprivate/create_arm/init with storage ik:storage IK.TEMP.SPAWN.SEGMENTS[0]

#> Finally Spawn Markers and Set Score
execute unless data storage ik:storage IK.TEMP.SPAWN.SEGMENTS[0] run function ik:zprivate/create_arm/markers

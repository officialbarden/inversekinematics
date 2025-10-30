# Macros:
# $(SEGMENTS) // is a List
#   |___________ length: The Length of the Arm
#   |___________ item: The item nbt of the item display of that segment.

data remove storage ik:storage IK.TEMP.SPAWN
$data modify storage ik:storage IK.TEMP.SPAWN.SEGMENTS set value $(SEGMENTS)

scoreboard players set $SegmentCount ik.TEMP 1
execute store result storage ik:storage IK.TEMP.SPAWN.SEGMENTS[0].SegmentNumber int 1 run scoreboard players get $SegmentCount ik.TEMP
function ik:zprivate/create_arm/init with storage ik:storage IK.TEMP.SPAWN.SEGMENTS[0]


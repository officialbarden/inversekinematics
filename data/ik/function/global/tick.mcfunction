# Run the IK Algorithm Every Tick // Might need to change it to 2-5t scheduled looping file if causes too much lag.
execute as @e[tag=ik.ARM.BASE,type=marker] at @s run function ik:zprivate/ik/init
execute at @e[type=minecraft:armor_stand, tag=fish_trap] run execute if predicate fish_traps:is_in_water run tag @e[type=minecraft:armor_stand, tag=fish_trap, sort=nearest, limit=1] add valid_fish_trap
execute at @e[type=minecraft:armor_stand, tag=valid_fish_trap] run loot spawn ~ ~ ~ fish gameplay/fishing ~ ~1.05 ~
execute at @e[type=minecraft:armor_stand, tag=valid_fish_trap] run particle minecraft:bubble ~ ~0.8 ~ 0.1 0.1 0.1 0.2 15
execute at @a run execute if entity @e[type=minecraft:armor_stand, tag=valid_fish_trap, distance=0..16] run playsound minecraft:entity.fishing_bobber.splash block @p ~ ~ ~ 1
tag @e[type=minecraft:armor_stand, tag=valid_fish_trap] remove valid_fish_trap
schedule function fish_traps:fish_trap 90s
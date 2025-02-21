execute store result score @s VillagerNames_NameRNG run random value 1..135

execute if score @s VillagerNames_NameRNG matches 001..020 run function namedvillagers:names/uncommon_1
execute if score @s VillagerNames_NameRNG matches 021..040 run function namedvillagers:names/uncommon_2
execute if score @s VillagerNames_NameRNG matches 041..060 run function namedvillagers:names/uncommon_3
execute if score @s VillagerNames_NameRNG matches 061..080 run function namedvillagers:names/uncommon_4
execute if score @s VillagerNames_NameRNG matches 081..100 run function namedvillagers:names/uncommon_5
execute if score @s VillagerNames_NameRNG matches 101..120 run function namedvillagers:names/uncommon_6
execute if score @s VillagerNames_NameRNG matches 121..140 run function namedvillagers:names/uncommon_7

tellraw @a[tag=NamedDebug] ["",{"text":"<"},{"selector":"@s"},{"text":"> Uncommon!"}]

tag @s add NamedUncommon
scoreboard players reset @s VillagerNames_NameRNG
execute store result score @s VillagerNames_NameRNG run random value 1..171

execute if score @s VillagerNames_NameRNG matches 001..020 run function namedvillagers:names/common_1
execute if score @s VillagerNames_NameRNG matches 021..040 run function namedvillagers:names/common_2
execute if score @s VillagerNames_NameRNG matches 041..060 run function namedvillagers:names/common_3
execute if score @s VillagerNames_NameRNG matches 061..080 run function namedvillagers:names/common_4
execute if score @s VillagerNames_NameRNG matches 081..100 run function namedvillagers:names/common_5
execute if score @s VillagerNames_NameRNG matches 101..120 run function namedvillagers:names/common_6
execute if score @s VillagerNames_NameRNG matches 121..140 run function namedvillagers:names/common_7
execute if score @s VillagerNames_NameRNG matches 141..160 run function namedvillagers:names/common_8
execute if score @s VillagerNames_NameRNG matches 161..180 run function namedvillagers:names/common_9

tellraw @a[tag=NamedDebug] ["",{"text":"<"},{"selector":"@s"},{"text":"> Common!"}]

tag @s add NamedCommon
scoreboard players reset @s VillagerNames_NameRNG
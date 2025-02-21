execute store result score @s VillagerNames_NameRNG run random value 1..31

execute if score @s VillagerNames_NameRNG matches 01..20 run function namedvillagers:names/rare_1
execute if score @s VillagerNames_NameRNG matches 21..40 run function namedvillagers:names/rare_2

tellraw @a[tag=NamedDebug] ["",{"text":"<"},{"selector":"@s"},{"text":"> Rare!"}]

tag @s add NamedRare
scoreboard players reset @s VillagerNames_NameRNG
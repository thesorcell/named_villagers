execute store result score @s VillagerNames_NameRNG run random value 1..35

execute if score @s VillagerNames_NameRNG matches 1..20 run function namedvillagers:get_name_common
execute if score @s VillagerNames_NameRNG matches 21..34 run function namedvillagers:get_name_uncommon
execute if score @s VillagerNames_NameRNG matches 35 run function namedvillagers:get_name_rare

scoreboard players reset @s VillagerNames_NameRNG
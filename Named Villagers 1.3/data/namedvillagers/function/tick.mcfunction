execute at @a as @e[type=#namedvillagers:named, sort=nearest, limit=10] unless data entity @s CustomName run function namedvillagers:get_rarity

//Import
import mods.magneticraft.HydraulicPress;
import mods.magneticraft.Sieve;
import mods.magneticraft.SluiceBox;

//Sluice recipe tweak
recipes.replaceAllOccurences(<ore:slabStone>, <ceramics:unfired_clay:9>, <magneticraft:sluice_box>);

//Hydraulic Press compaction recipes
HydraulicPress.addRecipe(<contenttweaker:silicon_dioxide_dust_block>, <minecraft:quartz_block>.withTag({"asteroid": "true"}), 350, 2, false);
HydraulicPress.addRecipe(<contenttweaker:hop_graphite_dust_block>, <minecraft:diamond>, 1050, 2, false);

//Sieve non-ore recipes
Sieve.removeRecipe(<minecraft:sand>);
Sieve.removeRecipe(<minecraft:gravel>);
Sieve.removeRecipe(<minecraft:soul_sand>);
Sieve.addRecipe(<minecraft:gravel>, <contenttweaker:fine_gravel>, 0.9, <minecraft:flint>, 1, <minecraft:flint>, 0.1, 40, false);
Sieve.addRecipe(<minecraft:sand>, <contenttweaker:fine_sand>, 1, <minecraft:gold_nugget>, 0.04, <minecraft:quartz>, 0.01, 40, false);
Sieve.addRecipe(<minecraft:sand:1>, <contenttweaker:fine_sand>, 1, <minecraft:redstone>, 0.4, <minecraft:gold_nugget>, 0.05, 40, false);
Sieve.addRecipe(<minecraft:soul_sand>, <contenttweaker:fine_soul_sand>, 1, <minecraft:quartz>, 0.1, <minecraft:quartz>, 0.05, 40, false);
Sieve.addRecipe(<advancedrocketry:vitrifiedsand>, <minecraft:sand>, 0.9, <quark:glass_shards>, 1, <quark:glass_shards:1>, 0.5, 40, true);
Sieve.addRecipe(<contenttweaker:end_gravel>, <minecraft:sand>, 1.0, <ore:dustMolybdenum>.firstItem, 0.04, <ore:dustMixedPlatinumGroupMetal>.firstItem, 0.01, 40, true);
Sieve.addRecipe(<contenttweaker:shattered_end_stone>, <contenttweaker:end_gravel>, 0.8, <ore:dustUranium>.firstItem, 0.1, <ore:dustPlatinum>.firstItem, 0.03, 40, true);

//Sieve ore byproduct recipes
Sieve.addRecipe(<contenttweaker:crushed_ore_spoils>, <minecraft:gravel>, 0.2, <contenttweaker:fine_gravel>, 0.1, <ore:dustStone>.firstItem * 3, 1, 40, true);
Sieve.addRecipe(<contenttweaker:red_mud>, <contenttweaker:spent_red_mud>, 0.75, <ore:dustRutile>.firstItem, 0.6, <mekanism:dirtydust:0>, 0.3, 100, true);
Sieve.addRecipe(<ore:sludgeCopperDerivedAnode>.firstItem, <immersiveengineering:metal:12>, 0.3875, <immersiveengineering:metal:19>, 0.375, <ore:dustMolybdenum>.firstItem, 0.15, 100, true);
Sieve.addRecipe(<ore:sludgeNickelDerivedAnode>.firstItem, <immersiveengineering:metal:9>, 0.3, <immersiveengineering:metal:9>, 0.25, <ore:dustMixedPlatinumGroupMetal>.firstItem, 0.25, 100, true);

//Sieve ore recipes
Sieve.addRecipe(<contenttweaker:crushed_iron_ore>, <mekanism:dirtydust> * 2, 1, <mekores:mekanismore:13>, 0.1, <contenttweaker:crushed_ore_spoils>, 1, 25, true);
Sieve.addRecipe(<contenttweaker:crushed_gold_ore>, <mekanism:dirtydust:1> * 2, 1, <mekanism:dirtydust:3>, 0.05, <contenttweaker:crushed_ore_spoils>, 1, 25, true);
Sieve.addRecipe(<contenttweaker:crushed_copper_ore>, <mekanism:dirtydust:3> * 2, 1, <mekanism:dirtydust:1>, 0.1, <contenttweaker:crushed_ore_spoils>, 1, 25, true);
Sieve.addRecipe(<contenttweaker:crushed_bauxite_ore>, <mekores:mekanismore:33> * 2, 1, <mekanism:dirtydust>, 0.15, <contenttweaker:crushed_ore_spoils>, 1, 25, true);
Sieve.addRecipe(<contenttweaker:crushed_lead_ore>, <mekanism:dirtydust:6> * 2, 1, <mekanism:dirtydust:5>, 0.15, <contenttweaker:crushed_ore_spoils>, 1, 25, true);
Sieve.addRecipe(<contenttweaker:crushed_silver_ore>, <mekanism:dirtydust:5> * 2, 1, <mekanism:dirtydust:6>, 0.1, <contenttweaker:crushed_ore_spoils>, 1, 25, true);
Sieve.addRecipe(<contenttweaker:crushed_nickel_ore>, <mekores:mekanismore:13> * 2, 1, <mekores:mekanismore:18>, 0.01, <contenttweaker:crushed_ore_spoils>, 1, 25, true);
Sieve.addRecipe(<contenttweaker:crushed_uranium_ore>, <mekores:mekanismore:3> * 2, 1, <mekanism:dirtydust:6>, 0.1, <contenttweaker:crushed_ore_spoils>, 1, 25, true);
Sieve.addRecipe(<contenttweaker:crushed_tin_ore>, <mekanism:dirtydust:4> * 2, 1, <mekanism:dirtydust>, 0.15, <contenttweaker:crushed_ore_spoils>, 1, 25, true);
Sieve.addRecipe(<contenttweaker:crushed_platinum_ore>, <mekores:mekanismore:18> * 2, 1, <mekores:mekanismore:13>, 0.1, <contenttweaker:crushed_ore_spoils>, 1, 25, true);
Sieve.addRecipe(<contenttweaker:crushed_iridium_ore>, <mekores:mekanismore:23> * 2, 1, <mekores:mekanismore:18>, 0.05, <contenttweaker:crushed_ore_spoils>, 1, 25, true);
Sieve.addRecipe(<contenttweaker:crushed_ilmenite_ore>, <mekores:mekanismore:88> * 2, 1, <ore:dustMagnesium>.firstItem, 0.1, <contenttweaker:crushed_ore_spoils>, 1, 25, true);

//Sieve secondary ore recipes
Sieve.addRecipe(<ore:dustMixedPlatinumGroupMetal>.firstItem, <ore:dustPlatinum>.firstItem, 0.75, <ore:dustIridium>.firstItem, 0.25, <ore:nuggetMixedPlatinumGroupMetal>.firstItem, 0.875, 75, false);
Sieve.addRecipe(<ore:dustRichMixedPlatinumGroupMetal>.firstItem, <ore:dustPlatinum>.firstItem, 0.5, <ore:dustIridium>.firstItem, 0.5, <ore:nuggetMixedPlatinumGroupMetal>.firstItem, 0.875, 75, true);

//Sieve other dust recipes
Sieve.addRecipe(<ore:dustAsh>.firstItem, <ore:dyeLightGray>.firstItem, 0.4, <ore:dyeGray>.firstItem, 0.3, <earthworks:item_quicklime>, 0.3, 40, true);

//Sluice
SluiceBox.addRecipe(<minecraft:dirt>, 1.0, <earthworks:item_dirt>, 0.125, <earthworks:item_dirt>, 0.125, <minecraft:flint>, 0.0625, <minecraft:wheat_seeds>, 0.0625, <immersiveengineering:seed>, true);
SluiceBox.addRecipe(<ore:dustStone>.firstItem, 0.75, <minecraft:clay_ball>, 0.125, <minecraft:clay_ball>, 0.0625, <minecraft:clay_ball>, true);
SluiceBox.addRecipe(<contenttweaker:crushed_iron_ore>, 1, <mekanism:dirtydust> * 2, 0.1, <mekores:mekanismore:13>, true);
SluiceBox.addRecipe(<contenttweaker:crushed_gold_ore>, 1, <mekanism:dirtydust:1> * 2, 0.05, <mekanism:dirtydust:3>, true);
SluiceBox.addRecipe(<contenttweaker:crushed_copper_ore>, 1, <mekanism:dirtydust:3> * 2, 0.1, <mekanism:dirtydust:1>, true);
SluiceBox.addRecipe(<contenttweaker:crushed_bauxite_ore>, 1, <mekores:mekanismore:33> * 2, 0.15, <mekanism:dirtydust:0>, true);
SluiceBox.addRecipe(<contenttweaker:crushed_lead_ore>, 1, <mekanism:dirtydust:6> * 2, 0.15, <mekanism:dirtydust:5>, true);
SluiceBox.addRecipe(<contenttweaker:crushed_silver_ore>, 1, <mekanism:dirtydust:5> * 2, 0.1, <mekanism:dirtydust:6>, true);
SluiceBox.addRecipe(<contenttweaker:crushed_nickel_ore>, 1, <mekores:mekanismore:13> * 2, 0.01, <mekores:mekanismore:18>, true);
SluiceBox.addRecipe(<contenttweaker:crushed_uranium_ore>, 1, <mekores:mekanismore:3> * 2, 0.1, <mekanism:dirtydust:6>, true);
SluiceBox.addRecipe(<contenttweaker:crushed_tin_ore>, 1, <mekanism:dirtydust:4> * 2, 0.15, <mekanism:dirtydust>, true);
SluiceBox.addRecipe(<contenttweaker:crushed_platinum_ore>, 1, <mekores:mekanismore:18> * 2, 0.1, <mekores:mekanismore:13>, true);
SluiceBox.addRecipe(<contenttweaker:crushed_iridium_ore>, 1, <mekores:mekanismore:23> * 2, 0.05, <mekores:mekanismore:18>, true);
SluiceBox.addRecipe(<contenttweaker:crushed_ilmenite_ore>, 1, <mekores:mekanismore:88> * 2, 0.1, <ore:dustMagnesium>.firstItem, true);

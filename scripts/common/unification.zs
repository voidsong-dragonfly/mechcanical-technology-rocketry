//Import
import mods.jei.JEI.hide;
import mods.jei.JEI.removeAndHide;
import mods.mekanism.combiner;
import mods.immersiveengineering.Crusher;
import mods.immersiveengineering.AlloySmelter;
import mods.mekanism.chemical.oxidizer;
import mods.mekanism.chemical.crystallizer;
import mods.mekanism.purification;
import mods.mekanism.chemical.injection;
import mods.mekanism.chemical.dissolution;
import mods.mekanism.chemical.washer;
import mods.immersiveengineering.MetalPress;
import mods.immersiveengineering.BottlingMachine;
import scripts.common.recipefunctions.register;



/*
    Corrective machine recipes - this is the bit where machine recipes are changed to the new items
*/


//Remove and hide Mekanism & LibVulpes ingots/blocks/ores with Immersive Engineering alternates
//This section does a LOT of stuff
//It makes machines into what they should be for ore processing (crusher outputs ore dusts, high-tier unrealistic Mekanism ore processing is removed)
//It also adds or changes most processing that isn't directly tied to something else (arc furnace, etc)
//It's generally an all-purpose section dedicated to making the pack cohesive
//Remove Mekanism ores

//Replace said items with alternates in recipes
//Iron
Crusher.removeRecipesForInput(<minecraft:iron_ore>);
Crusher.addRecipe(<contenttweaker:crushed_iron_ore>, <ore:oreIron>, 4000);
furnace.remove(<ore:ingotIron>, <mekanism:dust>);
furnace.remove(<ore:ingotIron>, <libvulpes:productdust:1>);
furnace.addRecipe(<minecraft:iron_nugget>, <simpleoresamples:sampleblockiron>);
furnace.addRecipe(<minecraft:iron_ingot>, <ore:dustDirtyIron>);
furnace.addRecipe(<minecraft:iron_ingot> * 2, <contenttweaker:crushed_iron_ore>);
combiner.removeRecipe(<ore:oreIron>, <mekanism:dust>);
combiner.removeRecipe(<ore:oreIron>, <libvulpes:productdust:1>);
recipes.remove(<libvulpes:productrod:1>);
MetalPress.addRecipe(<libvulpes:productsheet:1>, <ore:plateIron>, <immersiveengineering:mold>, 3600);

//Gold
Crusher.removeRecipesForInput(<minecraft:gold_ore>);
Crusher.addRecipe(<contenttweaker:crushed_gold_ore>, <ore:oreGold>, 4000);
furnace.remove(<ore:ingotGold>, <ore:oreGold>);
furnace.remove(<ore:ingotGold>, <mekanism:dust:1>);
furnace.remove(<ore:ingotGold>, <libvulpes:productdust:2>);
furnace.remove(<ore:ingotGold>, <engineerstools:gold_grit>);
furnace.addRecipe(<minecraft:gold_nugget>, <simpleoresamples:sampleblockgold>);
furnace.addRecipe(<minecraft:gold_nugget> * 6, <ore:oreGold>);
furnace.addRecipe(<minecraft:gold_nugget> * 6, <mekanism:dirtydust:1>);
furnace.addRecipe(<minecraft:gold_nugget> * 6, <ore:oreNetherGold>);
furnace.addRecipe(<minecraft:gold_nugget> * 12, <contenttweaker:crushed_gold_ore>);
combiner.removeRecipe(<ore:oreGold>, <mekanism:dust:1>);

//Copper
Crusher.removeRecipesForInput(<immersiveengineering:ore:0>);
Crusher.addRecipe(<contenttweaker:crushed_copper_ore>, <ore:oreCopper>, 4000);
furnace.remove(<mekanism:ingot:5>);
furnace.remove(<libvulpes:productingot:4>);
furnace.remove(<forestry:ingot_copper>);
furnace.addRecipe(<immersiveengineering:metal:0>, <ore:dustDirtyCopper>);
furnace.addRecipe(<immersiveengineering:metal:0> * 2, <contenttweaker:crushed_copper_ore>);
furnace.addRecipe(<immersiveengineering:metal:20>, <simpleoresamples:sampleblockcopper>);
combiner.removeRecipe(<forestry:resources:1>, <mekanism:dust:3>);
combiner.removeRecipe(<forestry:resources:1>, <libvulpes:productdust:4>);
combiner.removeRecipe(<forestry:resources:1>, <immersiveengineering:metal:9>);
combiner.addRecipe(<immersiveengineering:metal:9> * 8, <minecraft:cobblestone>, <immersiveengineering:ore>);
recipes.remove(<mekanism:basicblock:12>);
recipes.remove(<mekanism:nugget:5>);
recipes.remove(<libvulpes:productrod:4>);
recipes.remove(<mekanism:ingot:5>);
MetalPress.removeRecipe(<libvulpes:productrod:4>);
MetalPress.addRecipe(<immersiveposts:metal_rods:1> * 2, <ore:ingotCopper>, <immersiveengineering:mold:2>, 3600);

//Annealed copper
recipes.replaceAllOccurences(<ore:ingotCopper>, <ore:ingotAnnealedCopper>, <ore:blockAnnealedCopper>);
recipes.replaceAllOccurences(<ore:nuggetCopper>, <ore:nuggetAnnealedCopper>, <ore:ingotAnnealedCopper>);
recipes.replaceAllOccurences(<ore:blockCopper>, <ore:blockAnnealedCopper>, <ore:ingotAnnealedCopper>);
recipes.replaceAllOccurences(<ore:ingotCopper>, <ore:ingotAnnealedCopper>, <ore:nuggetAnnealedCopper>);
Crusher.addRecipe(<libvulpes:productdust:4>, <ore:ingotAnnealedCopper>, 3600);
MetalPress.addRecipe(<libvulpes:productplate:4>, <ore:ingotAnnealedCopper>, <immersiveengineering:mold>, 3600);
MetalPress.addRecipe(<libvulpes:productsheet:4>, <ore:plateAnnealedCopper>, <immersiveengineering:mold>, 3600);
MetalPress.addRecipe(<ore:wireAnnealedCopper>.firstItem * 2, <ore:ingotAnnealedCopper>, <immersiveengineering:mold:4>, 3600);
furnace.addRecipe(<libvulpes:productingot:4>, <libvulpes:productdust:4>);
furnace.addRecipe(<libvulpes:productnugget:4>, <ore:nuggetCopper>);

//Silver
Crusher.removeRecipesForInput(<immersiveengineering:ore:3>);
Crusher.addRecipe(<contenttweaker:crushed_silver_ore>, <ore:oreSilver>, 4000);
furnace.remove(<ore:ingotSilver>, <mekanism:dust:5>);
furnace.remove(<ore:ingotSilver>, <ore:oreSilver>);
furnace.addRecipe(<immersiveengineering:metal:23> * 6, <ore:oreSilver>);
furnace.addRecipe(<immersiveengineering:metal:23> * 6, <mekanism:dirtydust:5>);
furnace.addRecipe(<immersiveengineering:metal:23>, <simpleoresamples:sampleblocksilver>);
furnace.addRecipe(<immersiveengineering:metal:23> * 12, <contenttweaker:crushed_silver_ore>);
combiner.removeRecipe(<ore:oreSilver>, <mekanism:dust:5>);

//Lead
Crusher.removeRecipesForInput(<immersiveengineering:ore:2>);
Crusher.addRecipe(<contenttweaker:crushed_lead_ore>, <ore:oreLead>, 4000);
furnace.remove(<ore:ingotLead>, <mekanism:dust:6>);
furnace.addRecipe(<immersiveengineering:metal:22>, <simpleoresamples:sampleblocklead>);
furnace.addRecipe(<immersiveengineering:metal:2>, <ore:dustDirtyLead>);
furnace.addRecipe(<immersiveengineering:metal:2> * 2, <contenttweaker:crushed_lead_ore>);
combiner.removeRecipe(<ore:oreLead>, <mekanism:dust:6>);

//Tin
Crusher.removeRecipesForInput(<libvulpes:productingot:5>);
Crusher.removeRecipesForInput(<libvulpes:ore0:5>);
Crusher.addRecipe(<libvulpes:productdust:5>, <ore:ingotTin>, 3600);
Crusher.addRecipe(<contenttweaker:crushed_tin_ore>, <ore:oreTin>, 4000);
furnace.remove(<mekanism:ingot:6>);
furnace.remove(<forestry:ingot_tin>);
furnace.addRecipe(<libvulpes:productingot:5>, <ore:dustDirtyTin>);
furnace.addRecipe(<libvulpes:productnugget:5>, <simpleoresamples:sampleblocktin>);
furnace.addRecipe(<libvulpes:productingot:5> * 2, <contenttweaker:crushed_tin_ore>);
combiner.removeRecipe(<forestry:resources:2>, <libvulpes:productdust:5>);
combiner.removeRecipe(<forestry:resources:2>, <mekanism:dust:4>);
recipes.remove(<mekanism:ingot:6>);
recipes.remove(<mekanism:basicblock:13>);
recipes.remove(<mekanism:nugget:6>);

//Osmium (LEU)
Crusher.removeRecipe(<mekanism:dust:2>);
Crusher.addRecipe(<mekanism:dust:2>, <ore:ingotLightlyEnrichedUraniumDioxide>, 3600);
combiner.removeRecipe(<mekanism:oreblock:0>, <mekanism:dust:2>);
furnace.remove(<mekanism:ingot:1>, <mekanism:oreblock:0>);
furnace.addRecipe(<ore:ingotDepletedUraniumDioxide>.firstItem, <ore:dustDepletedUraniumDioxide>);
recipes.addShaped(<mekanism:basicblock:0>,
 [[<ore:ingotLightlyEnrichedUraniumDioxide>, <ore:ingotLightlyEnrichedUraniumDioxide>, <ore:ingotLightlyEnrichedUraniumDioxide>],
 [<ore:ingotLightlyEnrichedUraniumDioxide>, <ore:ingotLightlyEnrichedUraniumDioxide>, <ore:ingotLightlyEnrichedUraniumDioxide>],
 [<ore:ingotLightlyEnrichedUraniumDioxide>, <ore:ingotLightlyEnrichedUraniumDioxide>, <ore:ingotLightlyEnrichedUraniumDioxide>]]);

//Nickel
Crusher.removeRecipesForInput(<immersiveengineering:ore:4>);
Crusher.addRecipe(<contenttweaker:crushed_nickel_ore>, <ore:oreNickel>, 4000);
furnace.addRecipe(<immersiveengineering:metal:4>, <mekores:mekanismore:13>);
furnace.addRecipe(<immersiveengineering:metal:24>, <simpleoresamples:sampleblocknickel>);
furnace.addRecipe(<immersiveengineering:metal:4> * 2, <contenttweaker:crushed_nickel_ore>);

//Bronze
AlloySmelter.removeRecipe(<forestry:ingot_bronze>);
AlloySmelter.addRecipe(<mekanism:ingot:2> * 4, <ore:ingotEquivalentCopper> * 3, <ore:ingotEquivalentTin>, 300);

//Electrum
AlloySmelter.removeRecipe(<immersiveengineering:metal:7>);
AlloySmelter.addRecipe(<immersiveengineering:metal:7> * 4, <ore:ingotEquivalentGold> * 3, <ore:ingotEquivalentSilver>, 300);

//Uranium
Crusher.removeRecipesForInput(<immersiveengineering:ore:5>);
Crusher.addRecipe(<contenttweaker:crushed_uranium_ore>, <ore:oreUranium>, 4000, <mekanism:dirtydust:6>, 0.1);
furnace.remove(<immersiveengineering:metal:5>, <ore:oreUranium>);

//Molybdenum
furnace.remove(<ore:ingotMolybdenum>);
AlloySmelter.removeRecipe(<immersiveengineering:metal:6>);
recipes.removeByRecipeName("immersiveengineering:material/dust_constantan");
recipes.addShaped(<immersiveengineering:sheetmetal:6> * 4,
 [[null, <ore:plateMolybdenum>, null],
 [<ore:plateMolybdenum>, null, <ore:plateMolybdenum>],
 [null, <ore:plateMolybdenum>, null]]);
recipes.addShaped(<immersiveposts:fence_constantan>,
 [[<ore:ingotMolybdenum>, <ore:stickMolybdenum>, <ore:ingotMolybdenum>],
 [<ore:ingotMolybdenum>, <ore:stickMolybdenum>, <ore:ingotMolybdenum>]]);
Crusher.removeRecipe(<ore:dustMolybdenum>.firstItem);
Crusher.addRecipe(<immersiveengineering:metal:15>, <ore:ingotMolybdenum>, 3600);
MetalPress.removeRecipe(<ore:stickMolybdenum>.firstItem);
MetalPress.addRecipe(<immersiveposts:metal_rods:5> * 2, <ore:ingotMolybdenum>, <immersiveengineering:mold:2>, 3600);
MetalPress.removeRecipe(<ore:wireMolybdenum>.firstItem);
MetalPress.addRecipe(<alternatingflux:material> * 2, <ore:ingotMolybdenum>, <immersiveengineering:mold:4>, 3600);
MetalPress.removeRecipe(<ore:plateMolybdenum>.firstItem);
MetalPress.addRecipe(<immersiveengineering:metal:36>, <ore:ingotMolybdenum>, <immersiveengineering:mold:0>, 3600);

//Aluminium
Crusher.removeRecipesForInput(<immersiveengineering:ore:1>);
Crusher.addRecipe(<contenttweaker:crushed_bauxite_ore>, <ore:oreBauxite>, 4000);
combiner.removeRecipe(<libvulpes:ore0:9>, <libvulpes:productdust:9>);
furnace.remove(<ore:ingotAluminum>, <ore:oreBauxite>);
furnace.remove(<libvulpes:productingot:9>);
recipes.remove(<libvulpes:metal0:9>);
recipes.remove(<libvulpes:productnugget:9>);
recipes.remove(<libvulpes:productrod:9>);
recipes.remove(<libvulpes:productingot:9>);
MetalPress.addRecipe(<libvulpes:productsheet:9>, <ore:plateAluminum>, <immersiveengineering:mold>, 3600);

//Titanium
Crusher.removeRecipe(<ore:dustRutile>.firstItem);
Crusher.removeRecipesForInput(<libvulpes:ore0:8>);
Crusher.addRecipe(<contenttweaker:crushed_ilmenite_ore>, <ore:oreIlmenite>, 4000);
furnace.remove(<ore:ingotTitanium>);
recipes.removeByRecipeName("advancedrocketry:sticktitanium");
MetalPress.addRecipe(<libvulpes:productsheet:7>, <ore:plateTitanium>, <immersiveengineering:mold>, 3600);

//Iridium
Crusher.removeRecipesForInput(<libvulpes:ore0:10>);
Crusher.addRecipe(<contenttweaker:crushed_iridium_ore>, <ore:oreIridium>, 4000);
furnace.remove(<ore:ingotIridium>);
recipes.removeByRecipeName("advancedrocketry:stickiridium");

//Steel
furnace.remove(<mekanism:ingot:4>);
furnace.remove(<libvulpes:productingot:6>);
recipes.remove(<mekanism:basicblock:5>);
recipes.remove(<libvulpes:metal0:6>);
recipes.remove(<mekanism:nugget:4>);
recipes.remove(<libvulpes:productnugget:6>);
recipes.remove(<libvulpes:productrod:6>);
recipes.remove(<mekanism:ingot:4>);
recipes.remove(<libvulpes:productingot:6>);
MetalPress.addRecipe(<libvulpes:productsheet:6>, <ore:plateSteel>, <immersiveengineering:mold>, 3600);

//Titanium Aluminide and Titanium Iridium
furnace.remove(<ore:ingotTitaniumAluminide>);
furnace.remove(<ore:ingotTitaniumIridium>);
recipes.removeByRecipeName("advancedrocketry:sticktitaniumaluminide");
recipes.removeByRecipeName("advancedrocketry:sticktitaniumiridium");

//CT material ores
Crusher.removeRecipesForInput(<ore:orePlatinum>.firstItem);
Crusher.addRecipe(<contenttweaker:crushed_platinum_ore>, <ore:orePlatinum>, 4000);
Crusher.addRecipe(<contenttweaker:crushed_niobium_ore>, <ore:oreNiobium>, 4000);

//Registry of CT materials
register([<ore:nuggetPlatinum>, <ore:ingotPlatinum>]);
register([<ore:nuggetDepletedUraniumDioxide>, <ore:ingotDepletedUraniumDioxide>]);
register([<ore:nuggetLightlyEnrichedUraniumDioxide>, <ore:ingotLightlyEnrichedUraniumDioxide>]);
register([<ore:nuggetNiobiumTitaniumAlloy>, <ore:ingotNiobiumTitaniumAlloy>, <ore:dustNiobiumTitaniumAlloy>]);
register([<ore:nuggetBeryllium>, <ore:ingotBeryllium>, <ore:dustBeryllium>]);
register([<ore:nuggetMaragingSteel>, <ore:blockMaragingSteel>, <ore:ingotMaragingSteel>, <ore:stickMaragingSteel>, <ore:plateMaragingSteel>, <ore:dustMaragingSteel>]);
register([<ore:nuggetYttriumBariumCuprate>, <ore:ingotYttriumBariumCuprate>]);

//CT sheets
MetalPress.addRecipe(<ore:sheetPlatinum>.firstItem, <ore:platePlatinum>, <immersiveengineering:mold>, 3600);

//Misc. dusts
oxidizer.removeRecipe(<gas:sulfurdioxide> * 100, <mekanism:otherdust:3>);
recipes.replaceAllOccurences(<mekanism:salt>, <immersivetech:material>, <mekanism:saltblock>);
oxidizer.removeRecipe(<gas:brine> * 15, <immersivetech:material>);
oxidizer.removeRecipe(<gas:brine> * 15, <mekanism:salt>);
Crusher.removeRecipe(<libvulpes:productdust:3>);
furnace.remove(<libvulpes:productingot:3>);
recipes.remove(<libvulpes:productingot:3>);
MetalPress.removeRecipe(<libvulpes:productplate:3>);

//Misc. Gems
combiner.removeRecipe(<minecraft:emerald_ore>);
combiner.addRecipe(<ore:gemEmerald> * 5, <minecraft:cobblestone>, <minecraft:emerald_ore>);
combiner.removeRecipe(<minecraft:diamond_ore>);
combiner.addRecipe(<ore:gemDiamond> * 5, <minecraft:cobblestone>, <minecraft:diamond_ore>);
combiner.removeRecipe(<minecraft:coal_ore>);
combiner.addRecipe(<ore:coal> * 12, <minecraft:cobblestone>, <minecraft:coal_ore>);
Crusher.removeRecipe(<forestry:apatite>);
combiner.removeRecipe(<forestry:resources:0>, <forestry:apatite>);
furnace.remove(<forestry:apatite>);

//Dilithium
Crusher.removeRecipesForInput(<libvulpes:ore0:0>);
Crusher.removeRecipe(<libvulpes:productdust>);

//Cinnabar & fluorite
Crusher.addRecipe(<ore:dustCinnabar>.firstItem * 4, <contenttweaker:nether_cinnabar_ore>, 4000);
Crusher.addRecipe(<ore:dustCinnabar>.firstItem * 4, <contenttweaker:cinnabar_ore>, 4000);
Crusher.addRecipe(<ore:dustFluorite>.firstItem * 4, <contenttweaker:nether_fluorite_ore>, 4000);

//Dyes
removeAndHide(<futuremc:dye:*>);
removeAndHide(<quark:root_dye:*>);
recipes.addShapeless(<biomesoplenty:black_dye>, [<quark:root_flower:1>]);
recipes.addShapeless(<biomesoplenty:black_dye>, [<futuremc:wither_rose>]);
recipes.addShapeless(<biomesoplenty:black_dye>, [<minecraft:dye:0>]);
recipes.addShapeless(<biomesoplenty:white_dye>, [<quark:root_flower:2>]);
recipes.addShapeless(<biomesoplenty:white_dye>, [<futuremc:lily_of_the_valley>]);
recipes.addShapeless(<biomesoplenty:white_dye>, [<minecraft:dye:15>]);
recipes.addShapeless(<biomesoplenty:brown_dye>, [<minecraft:dye:3>]);
recipes.addShapeless(<biomesoplenty:blue_dye>, [<quark:root_flower:0>]);
recipes.addShapeless(<biomesoplenty:blue_dye>, [<futuremc:cornflower>]);
recipes.addShapeless(<biomesoplenty:blue_dye>, [<minecraft:dye:4>]);

//Unused BoP Gems
Crusher.removeRecipe(<biomesoplenty:gem:0>);
furnace.remove(<biomesoplenty:gem:0>);
Crusher.removeRecipe(<biomesoplenty:gem:1>);
furnace.remove(<biomesoplenty:gem:1>);
Crusher.removeRecipe(<biomesoplenty:gem:2>);
furnace.remove(<biomesoplenty:gem:2>);
Crusher.removeRecipe(<biomesoplenty:gem:3>);
furnace.remove(<biomesoplenty:gem:3>);
Crusher.removeRecipe(<biomesoplenty:gem:4>);
furnace.remove(<biomesoplenty:gem:4>);
Crusher.removeRecipe(<biomesoplenty:gem:5>);
furnace.remove(<biomesoplenty:gem:5>);
Crusher.removeRecipe(<biomesoplenty:gem:6>);
furnace.remove(<biomesoplenty:gem:6>);
Crusher.removeRecipe(<biomesoplenty:gem:7>);
furnace.remove(<biomesoplenty:gem:7>);

//BoP Gem Ores
combiner.removeRecipe(<biomesoplenty:gem_ore:0>);
combiner.removeRecipe(<biomesoplenty:gem_ore:1>);
combiner.removeRecipe(<biomesoplenty:gem_ore:2>);
combiner.removeRecipe(<biomesoplenty:gem_ore:3>);
combiner.removeRecipe(<biomesoplenty:gem_ore:4>);
combiner.removeRecipe(<biomesoplenty:gem_ore:5>);
combiner.removeRecipe(<biomesoplenty:gem_ore:6>);
combiner.removeRecipe(<biomesoplenty:gem_ore:7>);

//Stones
//Marble in the IE crusher
Crusher.addRecipe(<contenttweaker:crushed_marble>, <ore:stoneMarbleAny>, 2400);
//Limestone in the IE crusher
Crusher.addRecipe(<contenttweaker:crushed_limestone>, <ore:stoneLimestoneAny>, 2400);
//Dolomite in the IE crusher
Crusher.addRecipe(<contenttweaker:crushed_dolomite>, <ore:stoneDolomiteAny>, 2400);
//Dolomite in the IE crusher
Crusher.addRecipe(<contenttweaker:crushed_basalt>, <ore:stoneBasaltAny>, 2400);

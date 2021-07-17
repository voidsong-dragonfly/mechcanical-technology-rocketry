//Import
import crafttweaker.item.IIngredient;
import mods.immersiveengineering.ArcFurnace;

//Remove all outputs
ArcFurnace.removeAll();


//Alloying
ArcFurnace.addRecipe(<immersiveengineering:metal:6> * 2, <ore:ingotEquivalentNickel>, null, 150, 512, [<ore:ingotEquivalentCopper>], "Alloying & Steelmaking");
ArcFurnace.addRecipe(<immersiveengineering:metal:7> * 2, <ore:ingotEquivalentGold>, null, 150, 512, [<ore:ingotEquivalentSilver>], "Alloying & Steelmaking");
ArcFurnace.addRecipe(<immersiveengineering:metal:8>, <ore:ingotEquivalentIron>, <immersiveengineering:material:7>, 400, 512, [<ore:dustAnyCarbon>], "Alloying & Steelmaking");
ArcFurnace.addRecipe(<mekanism:ingot:2> * 4, <ore:ingotEquivalentTin>, null, 300, 512, [<ore:ingotEquivalentCopper> * 3], "Alloying & Steelmaking");
ArcFurnace.addRecipe(<ore:ingotNiobiumTitaniumAlloy>.firstItem * 2, <ore:dustNiobium>, null, 200, 512, [<ore:ingotEquivalentTitanium>], "Alloying & Steelmaking");
ArcFurnace.addRecipe(<ore:ingotZirconiumNiobiumAlloy>.firstItem * 40, <ore:dustNiobium>, null, 8000, 512, [<ore:dustZirconium> * 39], "Alloying & Steelmaking");
ArcFurnace.addRecipe(<ore:ingotSilverIndiumAlloy>.firstItem * 5, <ore:dustIndium>, null, 1000, 512, [<ore:ingotEquivalentSilver> * 4], "Alloying & Steelmaking");
ArcFurnace.addRecipe(<advancedrocketry:productingot:0> * 4, <ore:ingotEquivalentAluminum>, null, 1600, 768, [<ore:ingotEquivalentTitanium> * 3], "Alloying & Steelmaking");
ArcFurnace.addRecipe(<ore:ingotMaragingSteel>.firstItem * 20, <ore:ingotEquivalentTitanium>, null, 4000, 512, [<ore:ingotEquivalentIron> * 13, <ore:ingotEquivalentNickel> * 4, <ore:dustCobalt> * 2], "Alloying & Steelmaking");
ArcFurnace.addRecipe(<advancedrocketry:productingot:1> * 2, <ore:ingotEquivalentIridium>, null, 800, 1024, [<ore:ingotEquivalentTitanium>], "Alloying & Steelmaking");
ArcFurnace.addRecipe(<ore:ingotTungstensteel>.firstItem * 2, <ore:ingotEquivalentSteel>, null, 800, 1024, [<ore:ingotEquivalentTungsten>], "Alloying & Steelmaking");

//Glassmaking and silicon production
//Silicon Production
ArcFurnace.addRecipe(<libvulpes:productdust:3> * 8, <contenttweaker:silicon_dioxide_dust_block>, null, 1600, 512, [<ore:dustAnyCarbon> * 8]);
ArcFurnace.addRecipe(<libvulpes:productdust:3>, <ore:dustQuartz>, null, 400, 512, [<ore:dustAnyCarbon>]);
ArcFurnace.addRecipe(<libvulpes:productdust:3> * 2, <contenttweaker:fine_sand> * 3, <immersiveengineering:material:7>, 1600, 256, [<ore:dustAnyCarbon> * 2]);
ArcFurnace.addRecipe(<libvulpes:productdust:3>, <ore:sand> * 2, <immersiveengineering:material:7>, 3200, 128, [<ore:dustAnyCarbon>]);
//ALON (Aluminium Oxynitride) for Panzer Glass - ~2x as bulletproof as standard bulletproof glass
ArcFurnace.addRecipe(<engineersdecor:panzerglass_block>, <ore:dustAluminum> * 3, <immersiveengineering:material:7>, 400, 512, [<ore:dustSaltpeter>]);
//Sand for normal glass & insulating glass
ArcFurnace.addRecipe(<minecraft:glass>, <ore:sand>, null, 400, 512);
ArcFurnace.addRecipe(<minecraft:glass> * 4, <contenttweaker:silicon_dioxide_dust_block>, null, 400, 512);
ArcFurnace.addRecipe(<immersiveengineering:stone_decoration:8> * 6, <ore:sand> * 8, <immersiveengineering:material:7> * 2, 400, 512, [<ore:dustIron>]);
ArcFurnace.addRecipe(<immersiveengineering:stone_decoration:8> * 8, <contenttweaker:fine_sand> * 8, null, 400, 512, [<ore:dustIron>]);

//Ore processing
ArcFurnace.addRecipe(<ore:slagNiobiumFerroalloy>.firstItem * 3, <ore:dustDirtyNiobium> * 4, <immersiveengineering:material:7> * 2, 400, 512, [<ore:flux>]);
ArcFurnace.addRecipe(<ore:slagLeadSinter>.firstItem * 48, <ore:dustDirtyLead> * 32, null, 400, 512, [<ore:dustIron> * 8, <ore:sand> * 16, <ore:flux> * 16]);


//Smelting (dusts)
ArcFurnace.addRecipe(<minecraft:iron_ingot>, <ore:dustIron>, null, 100, 512, null, "Smelting");
ArcFurnace.addRecipe(<minecraft:gold_ingot>, <ore:dustGold>, null, 100, 512, null, "Smelting");
ArcFurnace.addRecipe(<immersiveengineering:metal:0>, <ore:dustCopper>, null, 100, 512, null, "Smelting");
ArcFurnace.addRecipe(<immersiveengineering:metal:1>, <ore:dustAluminum>, null, 100, 512, null, "Smelting");
ArcFurnace.addRecipe(<immersiveengineering:metal:2>, <ore:dustLead>, null, 100, 512, null, "Smelting");
ArcFurnace.addRecipe(<immersiveengineering:metal:3>, <ore:dustSilver>, null, 100, 512, null, "Smelting");
ArcFurnace.addRecipe(<immersiveengineering:metal:4>, <ore:dustNickel>, null, 100, 512, null, "Smelting");
ArcFurnace.addRecipe(<immersiveengineering:metal:5>, <ore:dustUranium>, null, 100, 512, null, "Smelting");
ArcFurnace.addRecipe(<ore:ingotDepletedUraniumDioxide>.firstItem, <ore:dustDepletedUraniumDioxide>, null, 100, 512, null, "Smelting");
ArcFurnace.addRecipe(<ore:ingotLightlyEnrichedUraniumDioxide>.firstItem, <ore:dustLightlyEnrichedUraniumDioxide>, null, 100, 512, null, "Smelting");
ArcFurnace.addRecipe(<ore:ingotHighlyEnrichedUraniumDioxide>.firstItem, <ore:dustHighlyEnrichedUraniumDioxide>, null, 100, 512, null, "Smelting");
ArcFurnace.addRecipe(<ore:ingotTungsten>.firstItem, <ore:dustTungsten>, null, 100, 512, null, "Smelting");
ArcFurnace.addRecipe(<libvulpes:productingot:5>, <ore:dustTin>, null, 100, 512, null, "Smelting");
ArcFurnace.addRecipe(<libvulpes:productingot:7>, <ore:dustTitanium>, null, 100, 512, null, "Smelting");
ArcFurnace.addRecipe(<libvulpes:productingot:10>, <ore:dustIridium>, null, 100, 512, null, "Smelting");
ArcFurnace.addRecipe(<mekanism:ingot:1>, <ore:dustOsmium>, null, 100, 512, null, "Smelting");
ArcFurnace.addRecipe(<ore:ingotPlatinum>.firstItem, <ore:dustPlatinum>, null, 100, 512, null, "Smelting");
ArcFurnace.addRecipe(<ore:ingotMixedPlatinumGroupMetal>.firstItem, <ore:dustMixedPlatinumGroupMetal>, null, 100, 512, null, "Smelting");
ArcFurnace.addRecipe(<immersiveengineering:material:19>, <ore:dustHOPGraphite>, null, 100, 512, null, "Smelting");
ArcFurnace.addRecipe(<immersiveengineering:metal:6>, <ore:dustConstantan>, null, 100, 512, null, "Smelting");
ArcFurnace.addRecipe(<immersiveengineering:metal:7>, <ore:dustElectrum>, null, 100, 512, null, "Smelting");
ArcFurnace.addRecipe(<ore:ingotMaragingSteel>.firstItem, <ore:dustMaragingSteel>, null, 100, 512, null, "Smelting");
ArcFurnace.addRecipe(<immersiveengineering:metal:8>, <immersiveengineering:metal:17>, null, 100, 512, null, "Smelting");
ArcFurnace.addRecipe(<ore:ingotZirconiumNiobiumAlloy>.firstItem, <ore:dustZirconiumNiobiumAlloy>, null, 100, 512, null, "Smelting");
ArcFurnace.addRecipe(<ore:ingotSilverIndiumAlloy>.firstItem, <ore:dustSilverIndiumAlloy>, null, 100, 512, null, "Smelting");
ArcFurnace.addRecipe(<advancedrocketry:productingot:0>, <ore:dustTitaniumAluminide>, null, 100, 512, null, "Smelting");
ArcFurnace.addRecipe(<ore:ingotNiobiumTitaniumAlloy>.firstItem, <ore:dustNiobiumTitaniumAlloy>, null, 100, 512, null, "Smelting");
ArcFurnace.addRecipe(<advancedrocketry:productingot:1>, <ore:dustTitaniumIridium>, null, 100, 512, null, "Smelting");
ArcFurnace.addRecipe(<ore:ingotTungstensteel>.firstItem, <ore:dustTungstensteel>, null, 100, 512, null, "Smelting");

//Smelting (plates)
ArcFurnace.addRecipe(<minecraft:iron_ingot>, <ore:plateIron>, null, 100, 512, null, "Smelting");
ArcFurnace.addRecipe(<minecraft:gold_ingot>, <ore:plateGold>, null, 100, 512, null, "Smelting");
ArcFurnace.addRecipe(<immersiveengineering:metal:0>, <ore:plateCopper>, null, 100, 512, null, "Smelting");
ArcFurnace.addRecipe(<immersiveengineering:metal:1>, <ore:plateAluminum>, null, 100, 512, null, "Smelting");
ArcFurnace.addRecipe(<immersiveengineering:metal:2>, <ore:plateLead>, null, 100, 512, null, "Smelting");
ArcFurnace.addRecipe(<immersiveengineering:metal:3>, <ore:plateSilver>, null, 100, 512, null, "Smelting");
ArcFurnace.addRecipe(<immersiveengineering:metal:4>, <ore:plateNickel>, null, 100, 512, null, "Smelting");
ArcFurnace.addRecipe(<immersiveengineering:metal:5>, <ore:plateUranium>, null, 100, 512, null, "Smelting");
ArcFurnace.addRecipe(<ore:ingotDepletedUraniumDioxide>.firstItem, <ore:plateDepletedUraniumDioxide>, null, 100, 512, null, "Smelting");
ArcFurnace.addRecipe(<ore:ingotLightlyEnrichedUraniumDioxide>.firstItem, <ore:plateLightlyEnrichedUraniumDioxide>, null, 100, 512, null, "Smelting");
ArcFurnace.addRecipe(<ore:ingotHighlyEnrichedUraniumDioxide>.firstItem, <ore:plateHighlyEnrichedUraniumDioxide>, null, 100, 512, null, "Smelting");
ArcFurnace.addRecipe(<ore:ingotTungsten>.firstItem, <ore:plateTungsten>, null, 100, 512, null, "Smelting");
ArcFurnace.addRecipe(<libvulpes:productingot:5>, <ore:plateTin>, null, 100, 512, null, "Smelting");
ArcFurnace.addRecipe(<libvulpes:productingot:7>, <ore:plateTitanium>, null, 100, 512, null, "Smelting");
ArcFurnace.addRecipe(<libvulpes:productingot:10>, <ore:plateIridium>, null, 100, 512, null, "Smelting");
ArcFurnace.addRecipe(<ore:ingotPlatinum>.firstItem, <ore:platePlatinum>, null, 100, 512, null, "Smelting");
ArcFurnace.addRecipe(<ore:ingotMixedPlatinumGroupMetal>.firstItem, <ore:plateMixedPlatinumGroupMetal>, null, 100, 512, null, "Smelting");
ArcFurnace.addRecipe(<immersiveengineering:metal:6>, <ore:plateConstantan>, null, 100, 512, null, "Smelting");
ArcFurnace.addRecipe(<immersiveengineering:metal:7>, <ore:plateElectrum>, null, 100, 512, null, "Smelting");
ArcFurnace.addRecipe(<ore:ingotMaragingSteel>.firstItem, <ore:plateMaragingSteel>, null, 100, 512, null, "Smelting");
ArcFurnace.addRecipe(<immersiveengineering:metal:8>, <immersiveengineering:metal:38>, null, 100, 512, null, "Smelting");
ArcFurnace.addRecipe(<advancedrocketry:productingot:0>, <ore:plateTitaniumAluminide>, null, 100, 512, null, "Smelting");
ArcFurnace.addRecipe(<ore:ingotNiobiumTitaniumAlloy>.firstItem, <ore:plateNiobiumTitaniumAlloy>, null, 100, 512, null, "Smelting");
ArcFurnace.addRecipe(<advancedrocketry:productingot:1>, <ore:plateTitaniumIridium>, null, 100, 512, null, "Smelting");
ArcFurnace.addRecipe(<ore:ingotTungstensteel>.firstItem, <ore:plateTungstensteel>, null, 100, 512, null, "Smelting");

//Ore Dust Smelting
ArcFurnace.addRecipe(<minecraft:iron_ingot>, <ore:dustDirtyIron>, null, 100, 512, null, "Smelting");
ArcFurnace.addRecipe(<minecraft:gold_nugget> * 6, <ore:dustDirtyGold>, null, 100, 512, null, "Smelting");
ArcFurnace.addRecipe(<immersiveengineering:metal:0>, <ore:dustDirtyCopper>, null, 100, 512, null, "Smelting");
ArcFurnace.addRecipe(<immersiveengineering:metal:2>, <ore:dustDirtyLead>, null, 100, 512, null, "Smelting");
ArcFurnace.addRecipe(<immersiveengineering:metal:23> * 6, <ore:dustDirtySilver>, null, 100, 512, null, "Smelting");
ArcFurnace.addRecipe(<immersiveengineering:metal:4>, <ore:dustDirtyNickel>, null, 100, 512, null, "Smelting");
ArcFurnace.addRecipe(<ore:ingotTungsten>.firstItem, <ore:dustDirtyTungsten>, null, 100, 512, [<ore:dustAnyCarbon> * 2], "Smelting");
ArcFurnace.addRecipe(<libvulpes:productingot:5>, <ore:dustDirtyTin>, null, 100, 512, null, "Smelting");
ArcFurnace.addRecipe(<ore:nuggetPlatinum>.firstItem, <ore:dustDirtyPlatinum>, null, 100, 512, null, "Smelting");
ArcFurnace.addRecipe(<libvulpes:productnugget:10>, <ore:dustDirtyIridium>, null, 100, 512, null, "Smelting");
ArcFurnace.addRecipe(<mekanism:nugget:1>, <ore:dustDirtyOsmium>, null, 100, 512, null, "Smelting");

//Ore Smelting
ArcFurnace.addRecipe(<minecraft:iron_ingot> * 2, <ore:oreIron>, <immersiveengineering:material:7>, 200, 512, null, "Ore Smelting");
ArcFurnace.addRecipe(<minecraft:gold_nugget> * 12, <ore:oreGold>, <immersiveengineering:material:7>, 200, 512, null, "Ore Smelting");
ArcFurnace.addRecipe(<immersiveengineering:metal:0> * 2, <ore:oreCopper>, <immersiveengineering:material:7>, 200, 512, null, "Ore Smelting");
ArcFurnace.addRecipe(<immersiveengineering:metal:2> * 2, <ore:oreLead>, <immersiveengineering:material:7>, 200, 512, null, "Ore Smelting");
ArcFurnace.addRecipe(<immersiveengineering:metal:23> * 12, <ore:oreSilver>, <immersiveengineering:material:7>, 200, 512, null, "Ore Smelting");
ArcFurnace.addRecipe(<immersiveengineering:metal:4> * 2, <ore:oreNickel>, <immersiveengineering:material:7>, 200, 512, null, "Ore Smelting");
ArcFurnace.addRecipe(<libvulpes:productingot:5> * 2, <ore:oreTin>, <immersiveengineering:material:7>, 200, 512, null, "Ore Smelting");
ArcFurnace.addRecipe(<ore:nuggetPlatinum>.firstItem * 2, <ore:orePlatinum>, <immersiveengineering:material:7>, 200, 512, null, "Ore Smelting");
ArcFurnace.addRecipe(<libvulpes:productnugget:10> * 2, <ore:oreIridium>, <immersiveengineering:material:7>, 200, 512, null, "Ore Smelting");
ArcFurnace.addRecipe(<mekanism:nugget:1> * 2, <ore:oreOsmium>, <immersiveengineering:material:7>, 200, 512, null, "Ore Smelting");

//Dust Block Smelting
ArcFurnace.addRecipe(<immersiveengineering:material:19> * 8, <contenttweaker:hop_graphite_dust_block>, null, 900, 512, null, "Asteroid Dust Smelting");
ArcFurnace.addRecipe(<minecraft:iron_ingot> * 8, <contenttweaker:iron_dust_block>, null, 900, 512, null, "Asteroid Dust Smelting");
ArcFurnace.addRecipe(<immersiveengineering:metal:4> * 8, <contenttweaker:nickel_dust_block>, null, 900, 512, null, "Asteroid Dust Smelting");
ArcFurnace.addRecipe(<immersiveengineering:metal:0> * 8, <contenttweaker:copper_dust_block>, null, 900, 512, null, "Asteroid Dust Smelting");
ArcFurnace.addRecipe(<immersiveengineering:metal:1> * 8, <contenttweaker:aluminium_dust_block>, null, 900, 512, null, "Asteroid Dust Smelting");
ArcFurnace.addRecipe(<minecraft:gold_ingot> * 8, <contenttweaker:gold_dust_block>, null, 900, 512, null, "Asteroid Dust Smelting");
ArcFurnace.addRecipe(<immersiveengineering:metal:3> * 8, <contenttweaker:silver_dust_block>, null, 900, 512, null, "Asteroid Dust Smelting");
ArcFurnace.addRecipe(<ore:ingotPlatinum>.firstItem * 8, <contenttweaker:platinum_dust_block>, null, 900, 512, null, "Asteroid Dust Smelting");
ArcFurnace.addRecipe(<libvulpes:productingot:10> * 8, <contenttweaker:iridium_dust_block>, null, 900, 512, null, "Asteroid Dust Smelting");
ArcFurnace.addRecipe(<mekanism:ingot:1> * 8, <contenttweaker:osmium_dust_block>, null, 900, 512, null, "Asteroid Dust Smelting");
ArcFurnace.addRecipe(<ore:ingotTungsten>.firstItem * 8, <contenttweaker:tungsten_dust_block>, null, 900, 512, null, "Asteroid Dust Smelting");
ArcFurnace.addRecipe(<libvulpes:productingot:5> * 8, <contenttweaker:tin_dust_block>, null, 900, 512, null, "Asteroid Dust Smelting");
ArcFurnace.addRecipe(<libvulpes:productingot:7> * 8, <contenttweaker:titanium_dust_block>, null, 900, 512, null, "Asteroid Dust Smelting");

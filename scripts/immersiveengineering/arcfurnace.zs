//Import
import crafttweaker.item.IIngredient;
import mods.immersiveengineering.ArcFurnace;

//Remove all outputs
ArcFurnace.removeAll();


//Alloying
ArcFurnace.addRecipe(<libvulpes:productingot:4>, <ore:ingotCopper>, null, 300, 512, [], "Alloying & Steelmaking");
ArcFurnace.addRecipe(<immersiveengineering:metal:7> * 4, <ore:ingotSilver>, null, 300, 512, [<ore:ingotGold> * 3], "Alloying & Steelmaking");
ArcFurnace.addRecipe(<mekanism:ingot:2> * 4, <ore:ingotTin>, null, 300, 512, [<ore:ingotCopper> * 3], "Alloying & Steelmaking");
ArcFurnace.addRecipe(<mekanism:ingot:2> * 4, <ore:ingotAluminum>, null, 300, 512, [<ore:ingotCopper> * 3], "Alloying & Steelmaking");
ArcFurnace.addRecipe(<immersiveengineering:metal:8>, <ore:ingotIron>, <immersiveengineering:material:7>, 400, 512, [<ore:dustAnyCarbon>], "Alloying & Steelmaking");
ArcFurnace.addRecipe(<immersiveengineering:metal:8> * 12, <ore:dustSilicon>, null, 4800, 512, [<ore:ingotIron> * 10, <ore:dustMagnesium>], "Alloying & Steelmaking");
ArcFurnace.addRecipe(<advancedrocketry:productingot:0> * 12, <ore:ingotTitanium>, null, 2400, 768, [<ore:ingotAluminum> * 8, <ore:dustMagnesium> * 3], "Alloying & Steelmaking");
ArcFurnace.addRecipe(<ore:ingotMaragingSteel>.firstItem * 20, <ore:ingotTitanium>, null, 4000, 512, [<ore:ingotIron> * 12, <ore:ingotNickel> * 4, <ore:dustCobalt> * 2, <ore:ingotMolybdenum>], "Alloying & Steelmaking");
ArcFurnace.addRecipe(<advancedrocketry:productingot:1> * 5, <ore:ingotTitanium>, null, 2000, 1024, [<ore:ingotIridium> * 4], "Alloying & Steelmaking");

//Silicon Production
ArcFurnace.addRecipe(<libvulpes:productdust:3> * 4, <contenttweaker:silicon_dioxide_dust_block>, null, 1600, 512, [<ore:dustAnyCarbon> * 4]);
ArcFurnace.addRecipe(<libvulpes:productdust:3>, <ore:gemQuartz>, null, 400, 512, [<ore:dustAnyCarbon>]);
ArcFurnace.addRecipe(<libvulpes:productdust:3>, <ore:itemFlint>, null, 800, 512, [<ore:dustAnyCarbon>]);
ArcFurnace.addRecipe(<libvulpes:productdust:3> * 2, <contenttweaker:fine_sand> * 3, <immersiveengineering:material:7>, 1600, 256, [<ore:dustAnyCarbon> * 2]);
ArcFurnace.addRecipe(<libvulpes:productdust:3>, <ore:dustStone> * 2, <immersiveengineering:material:7>, 3200, 128, [<ore:dustAnyCarbon>]);
ArcFurnace.addRecipe(<libvulpes:productdust:3>, <ore:sand> * 2, <immersiveengineering:material:7>, 3200, 128, [<ore:dustAnyCarbon>]);
//Basalt production
ArcFurnace.addRecipe(<pvj:basalt>, <ore:basaltSourceAny>, null, 100, 512);

//Ore processing
ArcFurnace.addRecipe(<ore:ingotLead>.firstItem * 6, <ore:dustDirtyLead> * 4, <immersiveengineering:material:7> * 4, 400, 512, [<ore:dustIron>, <ore:sand> * 2, <ore:flux> * 2, <ore:dustAnyCarbon> * 6]);
ArcFurnace.addRecipe(<ore:ingotIron>.firstItem * 6, <ore:dustDirtyIron> * 4, <immersiveengineering:material:7> * 3, 400, 512, [<ore:dustAnyCarbon> * 4, <ore:flux> * 2]);

//Smelting (dusts)
ArcFurnace.addRecipe(<minecraft:iron_ingot>, <ore:dustIron>, null, 100, 512, null, "Smelting");
ArcFurnace.addRecipe(<minecraft:gold_ingot>, <ore:dustGold>, null, 100, 512, null, "Smelting");
ArcFurnace.addRecipe(<immersiveengineering:metal:0>, <ore:dustCopper>, null, 100, 512, null, "Smelting");
ArcFurnace.addRecipe(<libvulpes:productingot:4>, <ore:dustAnnealedCopper>, null, 100, 512, null, "Smelting");
ArcFurnace.addRecipe(<immersiveengineering:metal:1>, <ore:dustAluminum>, null, 100, 512, null, "Smelting");
ArcFurnace.addRecipe(<immersiveengineering:metal:2>, <ore:dustLead>, null, 100, 512, null, "Smelting");
ArcFurnace.addRecipe(<immersiveengineering:metal:3>, <ore:dustSilver>, null, 100, 512, null, "Smelting");
ArcFurnace.addRecipe(<immersiveengineering:metal:4>, <ore:dustNickel>, null, 100, 512, null, "Smelting");
ArcFurnace.addRecipe(<immersiveengineering:metal:5>, <ore:dustUranium>, null, 100, 512, null, "Smelting");
ArcFurnace.addRecipe(<ore:ingotDepletedUraniumDioxide>.firstItem, <ore:dustDepletedUraniumDioxide>, null, 100, 512, null, "Smelting");
ArcFurnace.addRecipe(<ore:ingotLightlyEnrichedUraniumDioxide>.firstItem, <ore:dustLightlyEnrichedUraniumDioxide>, null, 100, 512, null, "Smelting");
ArcFurnace.addRecipe(<ore:ingotMolybdenum>.firstItem, <ore:dustMolybdenum>, null, 100, 512, null, "Smelting");
ArcFurnace.addRecipe(<libvulpes:productingot:5>, <ore:dustTin>, null, 100, 512, null, "Smelting");
ArcFurnace.addRecipe(<libvulpes:productingot:7>, <ore:dustTitanium>, null, 100, 512, null, "Smelting");
ArcFurnace.addRecipe(<libvulpes:productingot:10>, <ore:dustIridium>, null, 100, 512, null, "Smelting");
ArcFurnace.addRecipe(<ore:ingotPlatinum>.firstItem, <ore:dustPlatinum>, null, 100, 512, null, "Smelting");
ArcFurnace.addRecipe(<immersiveengineering:material:19>, <ore:dustHOPGraphite>, null, 100, 512, null, "Smelting");
ArcFurnace.addRecipe(<immersiveengineering:metal:7>, <ore:dustElectrum>, null, 100, 512, null, "Smelting");
ArcFurnace.addRecipe(<ore:ingotMaragingSteel>.firstItem, <ore:dustMaragingSteel>, null, 100, 512, null, "Smelting");
ArcFurnace.addRecipe(<immersiveengineering:metal:8>, <immersiveengineering:metal:17>, null, 100, 512, null, "Smelting");
ArcFurnace.addRecipe(<ore:ingotBeryllium>.firstItem, <ore:dustBeryllium>, null, 100, 512, null, "Smelting");
ArcFurnace.addRecipe(<advancedrocketry:productingot:0>, <ore:dustTitaniumAluminide>, null, 100, 512, null, "Smelting");
ArcFurnace.addRecipe(<ore:ingotMischmetal>.firstItem, <ore:dustMischmetal>, null, 100, 512, null, "Smelting");
ArcFurnace.addRecipe(<advancedrocketry:productingot:1>, <ore:dustTitaniumIridium>, null, 100, 512, null, "Smelting");

//Smelting (plates)
ArcFurnace.addRecipe(<minecraft:iron_ingot>, <ore:plateIron>, null, 100, 512, null, "Smelting");
ArcFurnace.addRecipe(<minecraft:gold_ingot>, <ore:plateGold>, null, 100, 512, null, "Smelting");
ArcFurnace.addRecipe(<immersiveengineering:metal:0>, <ore:plateCopper>, null, 100, 512, null, "Smelting");
ArcFurnace.addRecipe(<libvulpes:productingot:4>, <ore:plateAnnealedCopper>, null, 100, 512, null, "Smelting");
ArcFurnace.addRecipe(<immersiveengineering:metal:1>, <ore:plateAluminum>, null, 100, 512, null, "Smelting");
ArcFurnace.addRecipe(<immersiveengineering:metal:2>, <ore:plateLead>, null, 100, 512, null, "Smelting");
ArcFurnace.addRecipe(<immersiveengineering:metal:3>, <ore:plateSilver>, null, 100, 512, null, "Smelting");
ArcFurnace.addRecipe(<immersiveengineering:metal:4>, <ore:plateNickel>, null, 100, 512, null, "Smelting");
ArcFurnace.addRecipe(<immersiveengineering:metal:5>, <ore:plateUranium>, null, 100, 512, null, "Smelting");
ArcFurnace.addRecipe(<ore:ingotDepletedUraniumDioxide>.firstItem, <ore:plateDepletedUraniumDioxide>, null, 100, 512, null, "Smelting");
ArcFurnace.addRecipe(<ore:ingotMolybdenum>.firstItem, <ore:plateMolybdenum>, null, 100, 512, null, "Smelting");
ArcFurnace.addRecipe(<libvulpes:productingot:5>, <ore:plateTin>, null, 100, 512, null, "Smelting");
ArcFurnace.addRecipe(<libvulpes:productingot:7>, <ore:plateTitanium>, null, 100, 512, null, "Smelting");
ArcFurnace.addRecipe(<libvulpes:productingot:10>, <ore:plateIridium>, null, 100, 512, null, "Smelting");
ArcFurnace.addRecipe(<ore:ingotPlatinum>.firstItem, <ore:platePlatinum>, null, 100, 512, null, "Smelting");
ArcFurnace.addRecipe(<immersiveengineering:metal:7>, <ore:plateElectrum>, null, 100, 512, null, "Smelting");
ArcFurnace.addRecipe(<ore:ingotMaragingSteel>.firstItem, <ore:plateMaragingSteel>, null, 100, 512, null, "Smelting");
ArcFurnace.addRecipe(<immersiveengineering:metal:8>, <immersiveengineering:metal:38>, null, 100, 512, null, "Smelting");
ArcFurnace.addRecipe(<advancedrocketry:productingot:0>, <ore:plateTitaniumAluminide>, null, 100, 512, null, "Smelting");
ArcFurnace.addRecipe(<advancedrocketry:productingot:1>, <ore:plateTitaniumIridium>, null, 100, 512, null, "Smelting");

//Ore Dust Smelting
ArcFurnace.addRecipe(<minecraft:iron_ingot>, <ore:dustDirtyIron>, null, 100, 512, null, "Smelting");
ArcFurnace.addRecipe(<minecraft:gold_nugget> * 6, <ore:dustDirtyGold>, null, 100, 512, null, "Smelting");
ArcFurnace.addRecipe(<immersiveengineering:metal:0>, <ore:dustDirtyCopper>, null, 100, 512, null, "Smelting");
ArcFurnace.addRecipe(<immersiveengineering:metal:2>, <ore:dustDirtyLead>, null, 100, 512, null, "Smelting");
ArcFurnace.addRecipe(<immersiveengineering:metal:23> * 6, <ore:dustDirtySilver>, null, 100, 512, null, "Smelting");
ArcFurnace.addRecipe(<immersiveengineering:metal:4>, <ore:dustDirtyNickel>, null, 100, 512, null, "Smelting");
ArcFurnace.addRecipe(<libvulpes:productingot:5>, <ore:dustDirtyTin>, null, 100, 512, null, "Smelting");
ArcFurnace.addRecipe(<ore:nuggetPlatinum>.firstItem, <ore:dustDirtyPlatinum>, null, 100, 512, null, "Smelting");
ArcFurnace.addRecipe(<libvulpes:productnugget:10>, <ore:dustDirtyIridium>, null, 100, 512, null, "Smelting");

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
ArcFurnace.addRecipe(<immersiveengineering:metal:5> * 8, <contenttweaker:uranium_dust_block>, null, 900, 512, null, "Asteroid Dust Smelting");
ArcFurnace.addRecipe(<ore:ingotMolybdenum>.firstItem * 8, <contenttweaker:molybdenum_dust_block>, null, 900, 512, null, "Asteroid Dust Smelting");
ArcFurnace.addRecipe(<libvulpes:productingot:7> * 8, <contenttweaker:titanium_dust_block>, null, 900, 512, null, "Asteroid Dust Smelting");

//Import
import mods.immersiveengineering.ArcFurnace;

//Remove all outputs
//Base ingots
ArcFurnace.removeRecipe(<minecraft:iron_ingot>);
ArcFurnace.removeRecipe(<minecraft:gold_ingot>);
ArcFurnace.removeRecipe(<immersiveengineering:metal:0>);
ArcFurnace.removeRecipe(<immersiveengineering:metal:1>);
ArcFurnace.removeRecipe(<immersiveengineering:metal:2>);
ArcFurnace.removeRecipe(<immersiveengineering:metal:3>);
ArcFurnace.removeRecipe(<immersiveengineering:metal:4>);
ArcFurnace.removeRecipe(<immersiveengineering:metal:5>);
ArcFurnace.removeRecipe(<immersive_energy:metal:0>);
ArcFurnace.removeRecipe(<immersive_energy:metal:1>);
ArcFurnace.removeRecipe(<immersive_energy:metal:2>);
ArcFurnace.removeRecipe(<immersive_energy:metal:3>);
ArcFurnace.removeRecipe(<libvulpes:productingot:3>);
ArcFurnace.removeRecipe(<libvulpes:productingot:5>);
ArcFurnace.removeRecipe(<libvulpes:productingot:7>);
ArcFurnace.removeRecipe(<libvulpes:productingot:10>);
ArcFurnace.removeRecipe(<mekanism:ingot:1>);
ArcFurnace.removeRecipe(<mekanism:ingot:6>);
ArcFurnace.removeRecipe(<forestry:ingot_tin>);
ArcFurnace.removeRecipe(<forestry:ingot_bronze>);
ArcFurnace.removeRecipe(<immersiveengineering:material:19>);
//Alloys
ArcFurnace.removeRecipe(<immersiveengineering:metal:6>);
ArcFurnace.removeRecipe(<immersiveengineering:metal:7>);
ArcFurnace.removeRecipe(<immersiveengineering:metal:8>);
ArcFurnace.removeRecipe(<mekanism:ingot:2>);
ArcFurnace.removeRecipe(<advancedrocketry:productingot:0>);
ArcFurnace.removeRecipe(<advancedrocketry:productingot:1>);
ArcFurnace.removeRecipe(<mekanism:ingot:0>);

//Alloying
ArcFurnace.addRecipe(<immersiveengineering:metal:6> * 2, <ore:ingotEquivalentNickel>, null, 150, 512, [<ore:ingotEquivalentCopper>], "Alloying & Steelmaking");
ArcFurnace.addRecipe(<immersiveengineering:metal:7> * 2, <ore:ingotEquivalentGold>, null, 150, 512, [<ore:ingotEquivalentSilver>], "Alloying & Steelmaking");
ArcFurnace.addRecipe(<immersiveengineering:metal:8>, <ore:ingotEquivalentIron>, <immersiveengineering:material:7>, 400, 512, [<ore:dustAnyCarbon>], "Alloying & Steelmaking");
ArcFurnace.addRecipe(<mekanism:ingot:2> * 4, <ore:ingotEquivalentTin>, null, 300, 512, [<ore:ingotEquivalentCopper> * 3], "Alloying & Steelmaking");
ArcFurnace.addRecipe(<contenttweaker:niobium_titanium_ingot> * 2, <ore:ingotEquivalentNiobium>, null, 200, 512, [<ore:ingotEquivalentTitanium>], "Alloying & Steelmaking");
ArcFurnace.addRecipe(<contenttweaker:zirconium_niobium_ingot> * 40, <ore:ingotEquivalentNiobium>, null, 8000, 512, [<ore:ingotEquivalentZirconium> * 39], "Alloying & Steelmaking");
ArcFurnace.addRecipe(<contenttweaker:silver_indium_ingot> * 5, <ore:dustIndium>, null, 1000, 512, [<ore:ingotEquivalentSilver> * 4], "Alloying & Steelmaking");
ArcFurnace.addRecipe(<advancedrocketry:productingot:0> * 4, <ore:ingotEquivalentAluminum>, null, 1600, 768, [<ore:ingotEquivalentTitanium> * 3], "Alloying & Steelmaking");
ArcFurnace.addRecipe(<contenttweaker:maraging_steel_ingot> * 20, <ore:ingotEquivalentTitanium>, null, 4000, 512, [<ore:ingotEquivalentIron> * 13, <ore:ingotEquivalentNickel> * 4, <ore:dustCobalt> * 2], "Alloying & Steelmaking");
ArcFurnace.addRecipe(<advancedrocketry:productingot:1> * 2, <ore:ingotEquivalentIridium>, null, 800, 1024, [<ore:ingotEquivalentTitanium>], "Alloying & Steelmaking");
ArcFurnace.addRecipe(<contenttweaker:tungstensteel_ingot> * 2, <ore:ingotEquivalentSteel>, null, 800, 1024, [<ore:ingotEquivalentTungsten>], "Alloying & Steelmaking");
ArcFurnace.addRecipe(<contenttweaker:impure_refined_glowstone_dust> * 20, <ore:dustTin>, null, 1600, 512, [<ore:dustGlowstone> * 16, <ore:dustQuartz> * 3, <ore:dustEnderPearl> * 2], "Alloying & Steelmaking");
ArcFurnace.addRecipe(<contenttweaker:impure_refined_obsidian_dust> * 8, <ore:dustDiamond>, null, 1600, 512, [<ore:dustGallium>, <ore:dustObsidian> * 4, <ore:dustTungsten> * 4], "Alloying & Steelmaking");

//Glassmaking and silicon production
//Silicon Production
ArcFurnace.addRecipe(<libvulpes:productdust:3> * 8, <contenttweaker:silicon_dioxide_dust_block>, null, 1600, 512, [<ore:dustAnyCarbon> * 8]);
ArcFurnace.addRecipe(<libvulpes:productdust:3>, <ore:dustQuartz>, null, 400, 512, [<ore:dustAnyCarbon>]);
ArcFurnace.addRecipe(<libvulpes:productdust:3>, <ore:sand> * 2, <immersiveengineering:material:7>, 3200, 128, [<ore:dustAnyCarbon>]);
//ALON (Aluminium Oxynitride) for Panzer Glass - ~2x as bulletproof as standard bulletproof glass
ArcFurnace.addRecipe(<engineersdecor:panzerglass_block>, <ore:dustAluminum> * 3, <immersiveengineering:material:7>, 400, 512, [<ore:dustSaltpeter>]);
//Sand for normal glass
ArcFurnace.addRecipe(<minecraft:glass>, <ore:sand>, null, 400, 512);
ArcFurnace.addRecipe(<minecraft:glass> * 4, <contenttweaker:silicon_dioxide_dust_block>, null, 400, 512);

//Ore processing
ArcFurnace.addRecipe(<contenttweaker:niobium_ferroalloy_ingot> * 3, <contenttweaker:washed_pyrochlore_ore_dust> * 4, <immersiveengineering:material:7> * 2, 400, 512, [<ore:flux>]);
ArcFurnace.addRecipe(<contenttweaker:lead_sinter> * 48, <contenttweaker:washed_lead_ore_dust> * 32, null, 400, 512, [<ore:dustIron> * 8, <ore:sand> * 16, <ore:flux> * 16]);


//Smelting (dusts)
ArcFurnace.addRecipe(<minecraft:iron_ingot>, <ore:dustIron>, null, 100, 512, null, "Smelting");
ArcFurnace.addRecipe(<minecraft:gold_ingot>, <ore:dustGold>, null, 100, 512, null, "Smelting");
ArcFurnace.addRecipe(<immersiveengineering:metal:0>, <ore:dustCopper>, null, 100, 512, null, "Smelting");
ArcFurnace.addRecipe(<immersiveengineering:metal:1>, <ore:dustAluminum>, null, 100, 512, null, "Smelting");
ArcFurnace.addRecipe(<immersiveengineering:metal:2>, <ore:dustLead>, null, 100, 512, null, "Smelting");
ArcFurnace.addRecipe(<immersiveengineering:metal:3>, <ore:dustSilver>, null, 100, 512, null, "Smelting");
ArcFurnace.addRecipe(<immersiveengineering:metal:4>, <ore:dustNickel>, null, 100, 512, null, "Smelting");
ArcFurnace.addRecipe(<immersiveengineering:metal:5>, <ore:dustUranium>, null, 100, 512, null, "Smelting");
ArcFurnace.addRecipe(<immersive_energy:metal:0>, <ore:dustThorium>, null, 100, 512, null, "Smelting");
ArcFurnace.addRecipe(<immersive_energy:metal:1>, <ore:dustTungsten>, null, 100, 512, null, "Smelting");
ArcFurnace.addRecipe(<libvulpes:productingot:5>, <ore:dustTin>, null, 100, 512, null, "Smelting");
ArcFurnace.addRecipe(<libvulpes:productingot:7>, <ore:dustTitanium>, null, 100, 512, null, "Smelting");
ArcFurnace.addRecipe(<contenttweaker:niobium_ingot>, <ore:dustNiobium>, null, 100, 512, null, "Smelting");
ArcFurnace.addRecipe(<libvulpes:productingot:10>, <ore:dustIridium>, null, 100, 512, null, "Smelting");
ArcFurnace.addRecipe(<mekanism:ingot:1>, <ore:dustOsmium>, null, 100, 512, null, "Smelting");
ArcFurnace.addRecipe(<contenttweaker:platinum_ingot>, <ore:dustPlatinum>, null, 100, 512, null, "Smelting");
ArcFurnace.addRecipe(<contenttweaker:platinum_group_metal_ingot>, <ore:dustMixedPlatinumGroupMetal>, null, 100, 512, null, "Smelting");
ArcFurnace.addRecipe(<immersiveengineering:material:19>, <ore:dustHOPGraphite>, null, 100, 512, null, "Smelting");
ArcFurnace.addRecipe(<immersiveengineering:metal:6>, <ore:dustConstantan>, null, 100, 512, null, "Smelting");
ArcFurnace.addRecipe(<immersiveengineering:metal:7>, <ore:dustElectrum>, null, 100, 512, null, "Smelting");
ArcFurnace.addRecipe(<contenttweaker:high_carbon_steel_ingot>, <ore:dustHighCarbonSteel>, null, 100, 512, null, "Smelting");
ArcFurnace.addRecipe(<contenttweaker:maraging_steel_ingot>, <ore:dustMaragingSteel>, null, 100, 512, null, "Smelting");
ArcFurnace.addRecipe(<immersiveengineering:metal:8>, <immersiveengineering:metal:17>, null, 100, 512, null, "Smelting");
ArcFurnace.addRecipe(<contenttweaker:zirconium_niobium_ingot>, <ore:dustZirconiumNiobium>, null, 100, 512, null, "Smelting");
ArcFurnace.addRecipe(<contenttweaker:silver_indium_ingot>, <ore:dustSilverIndium>, null, 100, 512, null, "Smelting");
ArcFurnace.addRecipe(<advancedrocketry:productingot:0>, <ore:dustTitaniumAluminide>, null, 100, 512, null, "Smelting");
ArcFurnace.addRecipe(<contenttweaker:niobium_titanium_ingot>, <ore:dustNiobiumTitanium>, null, 100, 512, null, "Smelting");
ArcFurnace.addRecipe(<advancedrocketry:productingot:1>, <ore:dustTitaniumIridium>, null, 100, 512, null, "Smelting");
ArcFurnace.addRecipe(<contenttweaker:tungstensteel_ingot>, <ore:dustTungstensteel>, null, 100, 512, null, "Smelting");

//Smelting (plates)
ArcFurnace.addRecipe(<minecraft:iron_ingot>, <ore:plateIron>, null, 100, 512, null, "Smelting");
ArcFurnace.addRecipe(<minecraft:gold_ingot>, <ore:plateGold>, null, 100, 512, null, "Smelting");
ArcFurnace.addRecipe(<immersiveengineering:metal:0>, <ore:plateCopper>, null, 100, 512, null, "Smelting");
ArcFurnace.addRecipe(<immersiveengineering:metal:1>, <ore:plateAluminum>, null, 100, 512, null, "Smelting");
ArcFurnace.addRecipe(<immersiveengineering:metal:2>, <ore:plateLead>, null, 100, 512, null, "Smelting");
ArcFurnace.addRecipe(<immersiveengineering:metal:3>, <ore:plateSilver>, null, 100, 512, null, "Smelting");
ArcFurnace.addRecipe(<immersiveengineering:metal:4>, <ore:plateNickel>, null, 100, 512, null, "Smelting");
ArcFurnace.addRecipe(<immersiveengineering:metal:5>, <ore:plateUranium>, null, 100, 512, null, "Smelting");
ArcFurnace.addRecipe(<immersive_energy:metal:0>, <ore:plateThorium>, null, 100, 512, null, "Smelting");
ArcFurnace.addRecipe(<immersive_energy:metal:1>, <ore:plateTungsten>, null, 100, 512, null, "Smelting");
ArcFurnace.addRecipe(<libvulpes:productingot:5>, <ore:plateTin>, null, 100, 512, null, "Smelting");
ArcFurnace.addRecipe(<libvulpes:productingot:7>, <ore:plateTitanium>, null, 100, 512, null, "Smelting");
ArcFurnace.addRecipe(<contenttweaker:niobium_ingot>, <ore:plateNiobium>, null, 100, 512, null, "Smelting");
ArcFurnace.addRecipe(<libvulpes:productingot:10>, <ore:plateIridium>, null, 100, 512, null, "Smelting");
ArcFurnace.addRecipe(<contenttweaker:platinum_ingot>, <ore:platePlatinum>, null, 100, 512, null, "Smelting");
ArcFurnace.addRecipe(<contenttweaker:platinum_group_metal_ingot>, <ore:plateMixedPlatinumGroupMetal>, null, 100, 512, null, "Smelting");
ArcFurnace.addRecipe(<immersiveengineering:metal:6>, <ore:plateConstantan>, null, 100, 512, null, "Smelting");
ArcFurnace.addRecipe(<immersiveengineering:metal:7>, <ore:plateElectrum>, null, 100, 512, null, "Smelting");
ArcFurnace.addRecipe(<contenttweaker:high_carbon_steel_ingot>, <ore:plateHighCarbonSteel>, null, 100, 512, null, "Smelting");
ArcFurnace.addRecipe(<contenttweaker:maraging_steel_ingot>, <ore:plateMaragingSteel>, null, 100, 512, null, "Smelting");
ArcFurnace.addRecipe(<immersiveengineering:metal:8>, <immersiveengineering:metal:38>, null, 100, 512, null, "Smelting");
ArcFurnace.addRecipe(<contenttweaker:zirconium_niobium_ingot>, <ore:plateZirconiumNiobium>, null, 100, 512, null, "Smelting");
ArcFurnace.addRecipe(<contenttweaker:silver_indium_ingot>, <ore:plateSilverIndium>, null, 100, 512, null, "Smelting");
ArcFurnace.addRecipe(<advancedrocketry:productingot:0>, <ore:plateTitaniumAluminide>, null, 100, 512, null, "Smelting");
ArcFurnace.addRecipe(<contenttweaker:niobium_titanium_ingot>, <ore:plateNiobiumTitanium>, null, 100, 512, null, "Smelting");
ArcFurnace.addRecipe(<advancedrocketry:productingot:1>, <ore:plateTitaniumIridium>, null, 100, 512, null, "Smelting");
ArcFurnace.addRecipe(<contenttweaker:tungstensteel_ingot>, <ore:plateTungstensteel>, null, 100, 512, null, "Smelting");

//Ore Dust Smelting
ArcFurnace.addRecipe(<minecraft:iron_ingot>, <ore:dustDirtyIron>, null, 100, 512, null, "Smelting");
ArcFurnace.addRecipe(<minecraft:gold_nugget> * 6, <ore:dustDirtyGold>, null, 100, 512, null, "Smelting");
ArcFurnace.addRecipe(<immersiveengineering:metal:0>, <ore:dustDirtyCopper>, null, 100, 512, null, "Smelting");
ArcFurnace.addRecipe(<immersiveengineering:metal:2>, <ore:dustDirtyLead>, null, 100, 512, null, "Smelting");
ArcFurnace.addRecipe(<immersiveengineering:metal:23> * 6, <ore:dustDirtySilver>, null, 100, 512, null, "Smelting");
ArcFurnace.addRecipe(<immersiveengineering:metal:4>, <ore:dustDirtyNickel>, null, 100, 512, null, "Smelting");
ArcFurnace.addRecipe(<immersive_energy:metal:0>, <ore:dustDirtyThorium>, null, 100, 512, null, "Smelting");
ArcFurnace.addRecipe(<immersive_energy:metal:1>, <ore:dustDirtyTungsten>, null, 100, 512, [<ore:dustAnyCarbon> * 2], "Smelting");
ArcFurnace.addRecipe(<libvulpes:productingot:5>, <ore:dustDirtyTin>, null, 100, 512, null, "Smelting");
ArcFurnace.addRecipe(<contenttweaker:platinum_nugget>, <ore:dustDirtyPlatinum>, null, 100, 512, null, "Smelting");
ArcFurnace.addRecipe(<libvulpes:productnugget:10>, <ore:dustDirtyIridium>, null, 100, 512, null, "Smelting");
ArcFurnace.addRecipe(<mekanism:nugget:1>, <ore:dustDirtyOsmium>, null, 100, 512, null, "Smelting");

//Ore Smelting
ArcFurnace.addRecipe(<minecraft:iron_ingot> * 2, <ore:oreIron>, <immersiveengineering:material:7>, 200, 512, null, "Ore Smelting");
ArcFurnace.addRecipe(<minecraft:gold_nugget> * 12, <ore:oreGold>, <immersiveengineering:material:7>, 200, 512, null, "Ore Smelting");
ArcFurnace.addRecipe(<immersiveengineering:metal:0> * 2, <ore:oreCopper>, <immersiveengineering:material:7>, 200, 512, null, "Ore Smelting");
ArcFurnace.addRecipe(<immersiveengineering:metal:2> * 2, <ore:oreLead>, <immersiveengineering:material:7>, 200, 512, null, "Ore Smelting");
ArcFurnace.addRecipe(<immersiveengineering:metal:23> * 12, <ore:oreSilver>, <immersiveengineering:material:7>, 200, 512, null, "Ore Smelting");
ArcFurnace.addRecipe(<immersiveengineering:metal:4> * 2, <ore:oreNickel>, <immersiveengineering:material:7>, 200, 512, null, "Ore Smelting");
ArcFurnace.addRecipe(<immersive_energy:metal:0> * 2, <ore:oreThorium>, <immersiveengineering:material:7>, 200, 512, null, "Ore Smelting");
ArcFurnace.addRecipe(<libvulpes:productingot:5> * 2, <ore:oreTin>, <immersiveengineering:material:7>, 200, 512, null, "Ore Smelting");
ArcFurnace.addRecipe(<contenttweaker:platinum_nugget> * 2, <ore:orePlatinum>, <immersiveengineering:material:7>, 200, 512, null, "Ore Smelting");
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
ArcFurnace.addRecipe(<contenttweaker:platinum_ingot> * 8, <contenttweaker:platinum_dust_block>, null, 900, 512, null, "Asteroid Dust Smelting");
ArcFurnace.addRecipe(<libvulpes:productingot:10> * 8, <contenttweaker:iridium_dust_block>, null, 900, 512, null, "Asteroid Dust Smelting");
ArcFurnace.addRecipe(<mekanism:ingot:1> * 8, <contenttweaker:osmium_dust_block>, null, 900, 512, null, "Asteroid Dust Smelting");
ArcFurnace.addRecipe(<immersive_energy:metal:1> * 8, <contenttweaker:tungsten_dust_block>, null, 900, 512, null, "Asteroid Dust Smelting");
ArcFurnace.addRecipe(<libvulpes:productingot:5> * 8, <contenttweaker:tin_dust_block>, null, 900, 512, null, "Asteroid Dust Smelting");
ArcFurnace.addRecipe(<libvulpes:productingot:7> * 8, <contenttweaker:titanium_dust_block>, null, 900, 512, null, "Asteroid Dust Smelting");
ArcFurnace.addRecipe(<contenttweaker:niobium_ingot> * 8, <contenttweaker:niobium_dust_block>, null, 900, 512, null, "Asteroid Dust Smelting");

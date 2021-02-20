//Import
import mods.immersivetechnology.Distiller;
import mods.immersiveengineering.Refinery;
import mods.immersiveengineering.Mixer;
import mods.immersiveengineering.BottlingMachine;
import mods.immersiveengineering.MetalPress;
import mods.immersiveengineering.BlastFurnace;
import mods.immersiveengineering.CokeOven;
import mods.immersiveengineering.Crusher;
import mods.industrialwires.MarxGenerator;
import mods.immersiveengineering.Squeezer;
import mods.immersiveengineering.AlloySmelter;



/*
   Machine recipes - anything that goes in an IE machine
*/

//Petrochem recipes
//Add hydrotreated oil/gas recipe
Refinery.addRecipe(<liquid:hydrotreatedoil> * 100, <liquid:oil> * 100, <liquid:liquidhydrogen> * 2, 80);
Refinery.addRecipe(<liquid:hydrotreatedgas> * 100, <liquid:naturalgas> * 100, <liquid:liquidhydrogen> * 1, 80);
//Steam cracking recipes
Refinery.addRecipe(<liquid:crackednaphtha> * 25, <liquid:naphtha> * 20, <liquid:steam> * 100, 320);
Refinery.addRecipe(<liquid:crackedethene> * 25, <liquid:liquidethene> * 20, <liquid:steam> * 100, 320);
Refinery.addRecipe(<liquid:crackedmethane> * 25, <liquid:methane> * 20, <liquid:steam> * 100, 320);

//RP-1 Recipes
Refinery.addRecipe(<liquid:hydrotreatedkerosene> * 200, <liquid:kerosene> * 200, <liquid:liquidhydrogen> * 1, 80);
Distiller.addRecipe(<liquid:lowcontaminatekerosene> * 1000, <liquid:lowsulfurkerosene> * 1000, <forestry:ash>, 10000, 200, 0.01);

//Diluted sulfuric acid -> sulfuric acid (small amount of loss)
Distiller.addRecipe(<liquid:sulfuricacid> * 400, <liquid:dilutedsulfuricacid> * 1000, <mekanism:biofuel>, 250, 200, 1.0);

//Distiller recipes for salt drying
Distiller.addRecipe(<liquid:water> * 1000, <liquid:magnesiumchloridesolution> * 1000, <contenttweaker:material_part:112> * 10, 200, 250, 1.0);
Distiller.addRecipe(<liquid:water> * 1000, <liquid:lithiumchloridesolution> * 1000, <contenttweaker:material_part:113> * 10, 200, 250, 1.0);

//Lithiated water
Mixer.addRecipe(<liquid:lithiatedwater> * 100, <liquid:water> * 100, [<ore:dustLithium>], 2000);

//Concrete from slag or stone dust
Mixer.addRecipe(<liquid:concrete> * 750, <liquid:water> * 750, [<ore:itemSlag>, <ore:itemSlag>, <ore:itemClay>, <ore:gravel>], 4000);
Mixer.addRecipe(<liquid:concrete> * 750, <liquid:water> * 750, [<ore:itemSlag>, <ore:itemSlag>, <ore:dustStone>, <ore:gravel>], 4000);
Mixer.addRecipe(<liquid:concrete> * 500, <liquid:water> * 500, [<ore:itemSlag>, <ore:itemSlag>, <ore:dustStone>, <ore:dustStone>], 4000);

//Concrete Bottling Machine recipes
recipes.remove(<engineersdecor:rebar_concrete>);
recipes.remove(<engineersdecor:gas_concrete>);
BottlingMachine.addRecipe(<immersiveengineering:stone_decoration:5>, <ore:pileSand>, <liquid:concrete> * 125);
BottlingMachine.addRecipe(<engineersdecor:rebar_concrete>, <ore:scaffoldingSteel>, <liquid:concrete> * 125);
BottlingMachine.addRecipe(<engineersdecor:gas_concrete> * 2, <ore:sand>, <liquid:concrete> * 125);
BottlingMachine.addRecipe(<contenttweaker:fission_reactor_calandria_casing>, <contenttweaker:fission_reactor_calandria_casing_shell>, <liquid:concrete> * 125);

//Plastic bottling machine recipes
BottlingMachine.addRecipe(<contenttweaker:injection_mold_hdpe_rod>, <immersiveengineering:mold:2>, <liquid:polyethene> * 125);
BottlingMachine.addRecipe(<contenttweaker:injection_mold_hdpe_sheet>, <immersiveengineering:mold:0>, <liquid:polyethene> * 250);
BottlingMachine.addRecipe(<contenttweaker:plascrete>, <engineersdecor:rebar_concrete>, <liquid:polyethene> * 1000);
recipes.addShapeless(<mekanism:polyethene:2>, [<contenttweaker:injection_mold_hdpe_sheet>.transformReplace(<immersiveengineering:mold:0>)]);
recipes.addShapeless(<mekanism:polyethene:3>, [<contenttweaker:injection_mold_hdpe_rod>.transformReplace(<immersiveengineering:mold:2>)]);
BottlingMachine.addRecipe(<contenttweaker:unprepared_plastic_circuit_board>, <ore:sheetCopper>, <liquid:polyethene> * 250);
BottlingMachine.addRecipe(<contenttweaker:unprepared_platinum_backed_plastic_circuit_board>, <ore:sheetPlatinum>, <liquid:polyethene> * 250);

//H2SO4 bottling machine recipes
BottlingMachine.addRecipe(<libvulpes:battery>, <contenttweaker:small_battery_hull>, <liquid:sulfuricacid> * 125);
BottlingMachine.addRecipe(<contenttweaker:plastic_circuit_board>, <contenttweaker:unprepared_plastic_circuit_board>, <liquid:sulfuricacid> * 125);
BottlingMachine.addRecipe(<contenttweaker:platinum_backed_plastic_circuit_board>, <contenttweaker:unprepared_platinum_backed_plastic_circuit_board>, <liquid:sulfuricacid> * 125);
recipes.addShapeless(<contenttweaker:prepared_integrated_circuit_wafer>, [<contenttweaker:gallium_doped_silicon_wafer>, <contenttweaker:integrated_circuit_etching_plate>]);
recipes.addShapeless(<contenttweaker:prepared_cpu_wafer>, [<contenttweaker:gallium_doped_silicon_wafer>, <contenttweaker:cpu_etching_plate>]);
recipes.addShapeless(<contenttweaker:integrated_circuit_wafer>, [<contenttweaker:etched_integrated_circuit_wafer>.transformReplace(<contenttweaker:integrated_circuit_etching_plate>)]);
recipes.addShapeless(<contenttweaker:cpu_wafer>, [<contenttweaker:etched_cpu_wafer>.transformReplace(<contenttweaker:cpu_etching_plate>)]);
BottlingMachine.addRecipe(<contenttweaker:etched_integrated_circuit_wafer>, <contenttweaker:prepared_integrated_circuit_wafer>, <liquid:sulfuricacid> * 125);
BottlingMachine.addRecipe(<contenttweaker:etched_cpu_wafer>, <contenttweaker:prepared_cpu_wafer>, <liquid:sulfuricacid> * 125);

//Helium botting machine recipes
BottlingMachine.addRecipe(<contenttweaker:pressurized_helium_tank>, <immersiveengineering:toolupgrade>, <liquid:helium> * 4000);

//Supercapacitor bottling machine recipes
BottlingMachine.addRecipe(<contenttweaker:supercapacitor>, <contenttweaker:supercapacitor_hull>, <liquid:distwater> * 125);

//Superconductor Cable bottling machine recipes
BottlingMachine.addRecipe(<mekanism:transmitter>.withTag({tier: 3}), <contenttweaker:unfilled_superconductor_cable>, <liquid:liquidnitrogen> * 125);

//Steam bottling machine recipes
BottlingMachine.addRecipe(<tetra:magmatic_cell>, <tetra:magmatic_cell:128>, <liquid:steam> * 8000);

//Remove Steel Block Recipe, it makes no sense
BlastFurnace.removeRecipe(<immersiveengineering:storage:8>);

//Add Iron output to Oxidized Ferric Sand
BlastFurnace.addRecipe(<rustic:dust_tiny_iron> * 3, <advancedrocketry:hotturf>, 400, <minecraft:sand:1>);

//Dolomite recipes
furnace.addRecipe(<contenttweaker:calcined_crushed_dolomite>, <contenttweaker:crushed_dolomite>);

//Blaze Powder to sulfur & soul sand to nitrate (gunpowder!)
BlastFurnace.addRecipe(<immersiveengineering:material:25> * 2, <minecraft:blaze_powder> * 3, 600, <immersiveengineering:material:7> * 1);
BlastFurnace.addRecipe(<minecraft:sand> * 3, <minecraft:soul_sand> * 3, 600, <immersiveengineering:material:24> * 2);

//Wither ash to charcoal dust and stygian acid (tiny tiny bits), and bitumen to petcoke
CokeOven.addRecipe(<minecraft:coal:1>, 500, <contenttweaker:charcoal_precursor>, 900);
CokeOven.addRecipe(<contenttweaker:material_part:116>, 0, <quark:black_ash>, 300);
CokeOven.addRecipe(<contenttweaker:petroleum_coke>, 0, <immersivepetroleum:material>, 20);

//Make Marx Generator only process gem ores but do it very well
MarxGenerator.removeRecipe(<ore:oreIron>);
MarxGenerator.removeRecipe(<ore:oreGold>);
MarxGenerator.removeRecipe(<ore:oreCopper>);
MarxGenerator.removeRecipe(<ore:oreAluminum>);
MarxGenerator.removeRecipe(<ore:oreSilver>);
MarxGenerator.removeRecipe(<ore:oreLead>);
MarxGenerator.removeRecipe(<ore:oreNickel>);
MarxGenerator.removeRecipe(<ore:oreUranium>);
MarxGenerator.removeRecipe(<ore:oreTin>);

//Add aquaculture fish bone bonemeal recipe
Crusher.addRecipe(<minecraft:dye:15> * 6, <aquaculture:fish:38>, 4800);
Crusher.removeRecipe(<minecraft:string>);

//Add petroleum related recipes
Crusher.addRecipe(<contenttweaker:petroleum_coke_dust>, <contenttweaker:petroleum_coke>, 2400);
Crusher.addRecipe(<contenttweaker:material_part:116>, <minecraft:coal:1>, 2400);
Crusher.addRecipe(<mekanism:polyethene>, <mekanism:polyethene:3>, 1600);
Crusher.addRecipe(<mekanism:polyethene> * 2, <mekanism:polyethene:2>, 1600);
Crusher.addRecipe(<mekanism:polyethene> * 4, <mekanism:plasticblock:*>, 2400);
Crusher.addRecipe(<mekanism:polyethene> * 4, <mekanism:slickplasticblock:*>, 2400);
Crusher.addRecipe(<mekanism:polyethene> * 4, <mekanism:reinforcedplasticblock:*>, 2400, <mekanism:dust:2>, 0.2);
Crusher.addRecipe(<mekanism:polyethene> * 4, <mekanism:glowplasticblock:*>, 2400, <minecraft:glowstone_dust>, 0.3);
BlastFurnace.addFuel(<contenttweaker:petroleum_coke>, 1200);
Squeezer.addRecipe(<immersiveengineering:material:18>, null, <contenttweaker:petroleum_coke_dust> * 8, 19200);
    
//Make Insulating Glass made in the Alloy Kiln with Glass and Iron dust
recipes.remove(<immersiveengineering:stone_decoration:8>);
AlloySmelter.addRecipe(<immersiveengineering:stone_decoration:8> * 8, <minecraft:glass> * 8, <ore:dustIron>, 320);

//Misc Squeezer recipes, indluding Packed Ice & Crushed Ice from ice, leather removals, quartz, and wither skeleton stuff
recipes.remove(<futuremc:blue_ice>);
recipes.remove(<minecraft:skull:1>);
Squeezer.addRecipe(<minecraft:packed_ice>, <liquid:ice> * 3000, <ore:blockIce> * 4, 512000);
Squeezer.addRecipe(<biomesoplenty:hard_ice>, <liquid:ice> * 3000, <ore:blockPackedIce> * 4, 512000);
Squeezer.addRecipe(<futuremc:blue_ice>, <liquid:ice> * 3000, <biomesoplenty:hard_ice> * 4, 512000);
Squeezer.removeFluidRecipe(<liquid:blood>);
Squeezer.addRecipe(<minecraft:quartz_block>, null, <contenttweaker:silicon_dioxide_dust_block>, 1024000);
Squeezer.addRecipe(<minecraft:skull:1>, <liquid:endacid> * 250, <witherskelefix:fragment> * 16, 512000);

//Remove metal press rod recipes. Use the lathe
MetalPress.removeRecipeByMold(<immersiveengineering:mold:2>);

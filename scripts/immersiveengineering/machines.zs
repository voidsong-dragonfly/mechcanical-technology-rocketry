//Import
import mods.immersivetechnology.Distiller;
import mods.immersivetechnology.ElectrolyticCrucibleBattery;
import mods.immersivetechnology.MeltingCrucible;
import mods.immersiveengineering.Refinery;
import mods.immersiveengineering.Mixer;
import mods.immersiveengineering.BottlingMachine;
import mods.immersiveengineering.MetalPress;
import mods.immersiveengineering.BlastFurnace;
import mods.immersiveengineering.CokeOven;
import mods.immersiveengineering.Crusher;
import mods.industrialwires.MarxGenerator;
import mods.immersiveengineering.Squeezer;
import mods.immersiveengineering.Fermenter;
import mods.immersiveengineering.AlloySmelter;



/*
   Machine recipes - anything that goes in an IE machine
*/

//Air gasses mix
Refinery.addRecipe(<liquid:oxygen> * 100, <liquid:nitrogengas> * 80, <liquid:liquidoxygen> * 20, 80);

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

//Diluted sulfuric acid -> sulfuric acid (small amount of loss)
Distiller.addRecipe(<liquid:sulfuricacid> * 400, <liquid:dilutedsulfuricacid> * 1000, <mekanism:biofuel>, 250, 200, 1.0);
Distiller.addRecipe(<liquid:sulfuricacid> * 400, <liquid:coppersulfatesolutionresidue> * 400, <ore:sludgeCopperDerivedAnode>.firstItem * 1, 200, 250, 1.0);
Distiller.addRecipe(<liquid:sulfuricacid> * 400, <liquid:nickelsulfatesolutionresidue> * 400, <ore:sludgeNickelDerivedAnode>.firstItem * 1, 200, 250, 1.0);

//Distiller recipes for salt drying
Distiller.addRecipe(<liquid:water> * 1000, <liquid:magnesiumchloridesolution> * 1000, <ore:dustMagnesiumChloride>.firstItem * 10, 200, 250, 1.0);
Distiller.addRecipe(<liquid:water> * 1000, <liquid:lithiumchloridesolution> * 1000, <ore:dustLithiumChloride>.firstItem * 10, 200, 250, 1.0);

//Concrete from slag or stone dust
Mixer.addRecipe(<liquid:concrete> * 500, <liquid:water> * 500, [<contenttweaker:fine_sand>, <contenttweaker:fine_sand>, <ore:itemClay>, <contenttweaker:fine_gravel>], 4000);
Mixer.addRecipe(<liquid:concrete> * 750, <liquid:water> * 750, [<ore:itemSlag>, <ore:itemSlag>, <ore:itemClay>, <ore:gravel>], 4000);
Mixer.addRecipe(<liquid:concrete> * 750, <liquid:water> * 750, [<contenttweaker:fine_sand>, <contenttweaker:fine_sand>, <ore:dustStone>, <contenttweaker:fine_gravel>], 4000);
Mixer.addRecipe(<liquid:concrete> * 1000, <liquid:water> * 1000, [<ore:itemSlag>, <ore:itemSlag>, <ore:dustStone>, <contenttweaker:fine_gravel>], 4000);

//Lubricant from plant oil
Mixer.addRecipe(<liquid:lubricant> * 1000, <liquid:plantoil> * 1000, [<ore:dustHOPGraphite>], 20000);
Mixer.addRecipe(<liquid:lubricant> * 250, <liquid:plantoil> * 250, [<ore:dustSilicon>], 10000);

//Concrete Bottling Machine recipes
recipes.remove(<engineersdecor:rebar_concrete>);
recipes.remove(<engineersdecor:gas_concrete>);
BottlingMachine.addRecipe(<earthworks:block_concrete> * 8, <ore:gravel>, <liquid:concrete> * 1000);
BottlingMachine.addRecipe(<immersiveengineering:stone_decoration:5> * 8, <ore:sand>, <liquid:concrete> * 1000);
BottlingMachine.addRecipe(<engineersdecor:gas_concrete> * 8, <ore:dustAluminium>, <liquid:concrete> * 125);
BottlingMachine.addRecipe(<engineersdecor:rebar_concrete>, <ore:scaffoldingSteel>, <liquid:concrete> * 125);

//Plastic bottling machine recipes
BottlingMachine.addRecipe(<ore:injectionMoldHDPERod>.firstItem, <immersiveengineering:mold:2>, <liquid:polyethene> * 125);
BottlingMachine.addRecipe(<ore:injectionMoldHDPESheet>.firstItem, <immersiveengineering:mold:0>, <liquid:polyethene> * 250);
BottlingMachine.addRecipe(<contenttweaker:plastic_coated_rebar_concrete>, <engineersdecor:rebar_concrete>, <liquid:polyethene> * 1000);
recipes.addShapeless(<mekanism:polyethene:2>, [<ore:injectionMoldHDPESheet>.transformReplace(<immersiveengineering:mold:0>)]);
recipes.addShapeless(<mekanism:polyethene:3>, [<ore:injectionMoldHDPERod>.transformReplace(<immersiveengineering:mold:2>)]);
BottlingMachine.addRecipe(<ore:circuitBoardUnpreparedPlastic>.firstItem, <ore:sheetCopper>, <liquid:polyethene> * 250);
BottlingMachine.addRecipe(<ore:circuitBoardUnpreparedPlatinumBackedPlastic>.firstItem, <ore:sheetPlatinum>, <liquid:polyethene> * 250);

//H2SO4 bottling machine recipes
BottlingMachine.addRecipe(<libvulpes:battery>, <ore:smallBatteryHullItem>, <liquid:sulfuricacid> * 125);
BottlingMachine.addRecipe(<ore:circuitBoardPlastic>.firstItem, <ore:circuitBoardUnpreparedPlastic>, <liquid:sulfuricacid> * 125);
BottlingMachine.addRecipe(<ore:circuitBoardPlatinumBackedPlastic>.firstItem, <ore:circuitBoardUnpreparedPlatinumBackedPlastic>, <liquid:sulfuricacid> * 125);
recipes.addShapeless(<ore:preparedWaferIntegratedCircuit>.firstItem, [<ore:waferGoldDopedSilicon>, <ore:etchingPlateIntegratedCircuit>]);
recipes.addShapeless(<ore:preparedWaferCentralProcessingUnit>.firstItem, [<ore:waferGoldDopedSilicon>, <ore:etchingPlateCentralProcessingUnit>]);
recipes.addShapeless(<ore:waferIntegratedCircuit>.firstItem, [<ore:preparedWaferIntegratedCircuit>.firstItem.withTag({etched: "true"}).withLore(["§eEtched§r"]).transformReplace(<ore:etchingPlateIntegratedCircuit>.firstItem)]);
recipes.addShapeless(<ore:waferCentralProcessingUnit>.firstItem, [<ore:preparedWaferCentralProcessingUnit>.firstItem.withTag({etched: "true"}).withLore(["§eEtched§r"]).transformReplace(<ore:etchingPlateCentralProcessingUnit>.firstItem)]);
BottlingMachine.addRecipe(<ore:preparedWaferIntegratedCircuit>.firstItem.withTag({etched: "true"}).withLore(["§eEtched§r"]), <ore:preparedWaferIntegratedCircuit>, <liquid:hydrofluoricacid> * 125);
BottlingMachine.addRecipe(<ore:preparedWaferCentralProcessingUnit>.firstItem.withTag({etched: "true"}).withLore(["§eEtched§r"]), <ore:preparedWaferCentralProcessingUnit>, <liquid:hydrofluoricacid> * 125);

//High-teir item botting machine recipes
BottlingMachine.addRecipe(<immersiveengineering:toolupgrade>.withTag({helium: 4000}).withLore(["Helium: 4000"]), <immersiveengineering:toolupgrade>, <liquid:helium> * 4000);
BottlingMachine.addRecipe(<ore:supercapacitorItem>.firstItem, <ore:supercapacitorHullItem>, <liquid:distwater> * 125);
BottlingMachine.addRecipe(<mekanism:transmitter>.withTag({tier: 3}), <ore:unfilledSuperconductorCableItem>, <liquid:liquidnitrogen> * 125);
BottlingMachine.addRecipe(<mekanism:transmitter>.withTag({tier: 3}), <ore:unfilledHighCurrentSuperconductorCableItem>, <liquid:liquidnitrogen> * 100);
BottlingMachine.addRecipe(<tetra:magmatic_cell>, <tetra:magmatic_cell:128>, <liquid:steam> * 8000);

//Cooling bottling machine recipes
BottlingMachine.addRecipe(<quark:basalt>, <minecraft:magma>, <liquid:water> * 125);
BottlingMachine.addRecipe(<stygian:endobsidian>, <stygian:endmagma>, <liquid:water> * 125);

//Remove Steel Block Recipe, it makes no sense
BlastFurnace.removeRecipe(<immersiveengineering:storage:8>);

//Dolomite recipes
furnace.addRecipe(<contenttweaker:calcined_crushed_dolomite>, <contenttweaker:crushed_dolomite>);
furnace.addRecipe(<contenttweaker:calcined_crushed_marble>, <contenttweaker:crushed_marble>);

//Blaze Powder to sulfur & soul sand to nitrate (gunpowder!) & netherrack to redstone
BlastFurnace.addRecipe(<immersiveengineering:material:25> * 2, <minecraft:blaze_powder> * 3, 600, <immersiveengineering:material:7> * 1);
BlastFurnace.addRecipe(<minecraft:sand> * 3, <ore:soulsand>.firstItem * 3, 600, <immersiveengineering:material:24> * 2);
BlastFurnace.addRecipe(<contenttweaker:fine_sand> * 3, <contenttweaker:fine_soul_sand> * 3, 600, <immersiveengineering:material:24> * 2);
BlastFurnace.addRecipe(<minecraft:netherbrick> * 12, <minecraft:netherrack> * 12, 2400, <minecraft:redstone>);

//Wither ash to charcoal dust and stygian acid (tiny tiny bits), and bitumen to petcoke
CokeOven.addRecipe(<minecraft:coal:1>, 500, <ore:sludgeCharcoalPrecursor>, 900);
CokeOven.addRecipe(<ore:dustCharcoal>.firstItem, 0, <quark:black_ash>, 300);
CokeOven.addRecipe(<immersiveengineering:material:6>, 0, <immersivepetroleum:material>, 20);

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

//Non-ore-processing electrolysis recipes!
ElectrolyticCrucibleBattery.addRecipe(<liquid:liquidhydrogen> * 1600, <liquid:liquidoxygen> * 800, null, null, <liquid:water> * 1600, 384000, 100);
ElectrolyticCrucibleBattery.addRecipe(<liquid:hydrogendeuteride> * 1600, <liquid:liquidoxygen> * 800, null, null, <liquid:heavywater> * 1600, 384000, 100);
ElectrolyticCrucibleBattery.addRecipe(<liquid:liquiddeuterium> * 400, <liquid:liquidhydrogen> * 400, null, null, <liquid:hydrogendeuteride> * 800, 384000, 100);
ElectrolyticCrucibleBattery.addRecipe(<liquid:liquidhydrogen> * 800, <liquid:liquidchlorine> * 800, <liquid:sodiumhydroxidesolution> * 8000, null, <liquid:brine> * 8000, 384000, 100);
ElectrolyticCrucibleBattery.addRecipe(<liquid:liquidlithium> * 1600, <liquid:liquidchlorine> * 800, null, null, <liquid:moltenlithiumchloride> * 1600, 384000, 100);
ElectrolyticCrucibleBattery.addRecipe(<liquid:moltenmagnesium> * 800, <liquid:liquidchlorine> * 800, null, null, <liquid:moltenmagnesiumchloride> * 800, 384000, 100);
ElectrolyticCrucibleBattery.addRecipe(<liquid:moltencalcium> * 800, <liquid:liquidchlorine> * 800, null, null, <liquid:moltencalciumchloride> * 800, 384000, 100);
ElectrolyticCrucibleBattery.addRecipe(<liquid:liquidhydrogen> * 800, <liquid:fluorine> * 800, null, null, <liquid:hydrofluoricacid> * 1600, 384000, 400);

//Melting recipes
//Non-ices
MeltingCrucible.addRecipe(<liquid:moltenmagnesiumchloride> * 100, <ore:dustMagnesiumChloride>, 9600, 40);
MeltingCrucible.addRecipe(<liquid:moltenlithiumchloride> * 100, <ore:dustLithiumChloride>, 9600, 40);
MeltingCrucible.addRecipe(<liquid:moltencalciumchloride> * 100, <ore:dustCalciumChloride>, 9600, 40);
MeltingCrucible.addRecipe(<liquid:polyethene> * 125, <mekanism:polyethene>, 9600, 5);
MeltingCrucible.addRecipe(<liquid:moltencryolite> * 1000, <ore:oreCryolite>, 153600, 320);
//Ices
MeltingCrucible.addRecipe(<liquid:water> * 1000, <minecraft:ice>, 76800, 160);
MeltingCrucible.addRecipe(<liquid:liquidoxygen> * 1000, <contenttweaker:oxygen_ice>, 76800, 160);
MeltingCrucible.addRecipe(<liquid:nitrogengas> * 1000, <contenttweaker:nitrogen_ice>, 76800, 160);
MeltingCrucible.addRecipe(<liquid:methane> * 1000, <contenttweaker:methane_ice>, 76800, 160);
MeltingCrucible.addRecipe(<liquid:carbondioxide> * 1000, <contenttweaker:carbon_dioxide_ice>, 76800, 160);
MeltingCrucible.addRecipe(<liquid:liquidethene> * 1000, <contenttweaker:ethene_ice>, 76800, 160);
MeltingCrucible.addRecipe(<liquid:ammonia> * 1000, <contenttweaker:ammonia_ice>, 76800, 160);

//Remove string recipe
Crusher.removeRecipe(<minecraft:string>);

//Add soul sandstone recipe & other crushing recipes
Crusher.addRecipe(<minecraft:soul_sand> * 2, <quark:soul_sandstone:*>, 1600, <immersiveengineering:material:24>, 0.875);
Crusher.addRecipe(<contenttweaker:end_gravel>, <minecraft:end_stone>, 2400);
Crusher.addRecipe(<minecraft:gravel>, <minecraft:netherrack>, 1600, <minecraft:redstone>, 0.05);

//Add petroleum related recipes
Crusher.addRecipe(<ore:dustCharcoal>.firstItem, <minecraft:coal:1>, 2400);
Crusher.addRecipe(<mekanism:polyethene>, <mekanism:polyethene:3>, 1600);
Crusher.addRecipe(<mekanism:polyethene> * 2, <mekanism:polyethene:2>, 1600);
Crusher.addRecipe(<mekanism:polyethene> * 4, <mekanism:plasticblock:*>, 2400);
Crusher.addRecipe(<mekanism:polyethene> * 4, <mekanism:slickplasticblock:*>, 2400);
Crusher.addRecipe(<mekanism:polyethene> * 4, <mekanism:reinforcedplasticblock:*>, 2400, <ore:dustMagnesium>.firstItem, 0.2);
Crusher.addRecipe(<mekanism:polyethene> * 4, <mekanism:glowplasticblock:*>, 2400, <minecraft:glowstone_dust>, 0.3);
Crusher.addRecipe(<contenttweaker:fine_sand>, <contenttweaker:fine_gravel>, 1600);

//Make Insulating Glass made in the Alloy Kiln with Glass and Iron dust
recipes.remove(<immersiveengineering:stone_decoration:8>);
AlloySmelter.addRecipe(<immersiveengineering:stone_decoration:8> * 6, <minecraft:sand> * 8, <ore:dustIron>, 320);
AlloySmelter.addRecipe(<immersiveengineering:stone_decoration:8> * 8, <contenttweaker:fine_sand> * 8, <ore:dustIron>, 320);

//Fix weird recipes from QuackLib items
AlloySmelter.removeRecipe(<quacklib:component:20>);
AlloySmelter.removeRecipe(<quacklib:component:21>);

//Fermenter & squeezer rustic compat recipes
Fermenter.addRecipe(null, <liquid:ethanol> * 100, <ore:cropTomato>, 6400);
Squeezer.addRecipe(null, <liquid:plantoil> * 80, <rustic:grape_stem>, 6400);
Squeezer.addRecipe(null, <liquid:plantoil> * 80, <rustic:tomato_seeds>, 6400);
Squeezer.addRecipe(null, <liquid:plantoil> * 80, <rustic:chili_pepper_seeds>, 6400);
Squeezer.addRecipe(null, <liquid:plantoil> * 80, <rustic:apple_seeds>, 6400);

//Misc Squeezer recipes, indluding Packed Ice & Crushed Ice from ice, leather removals, quartz, and wither skeleton stuff
recipes.remove(<futuremc:blue_ice>);
recipes.remove(<minecraft:skull:1>);
Squeezer.addRecipe(<minecraft:packed_ice>, <liquid:ice> * 3000, <ore:blockIce> * 4, 512000);
Squeezer.addRecipe(<biomesoplenty:hard_ice>, <liquid:ice> * 3000, <ore:blockPackedIce> * 4, 512000);
Squeezer.addRecipe(<futuremc:blue_ice>, <liquid:ice> * 3000, <biomesoplenty:hard_ice> * 4, 512000);
Squeezer.removeFluidRecipe(<liquid:blood>);
Squeezer.addRecipe(<minecraft:skull:1>, <liquid:endacid> * 250, <witherskelefix:fragment> * 16, 512000);
Squeezer.addRecipe(<minecraft:gravel>, <liquid:blood> * 125, <minecraft:netherrack>, 25600);
Squeezer.addRecipe(<contenttweaker:end_gravel>, <liquid:helium> * 125, <minecraft:end_stone>, 25600);
Squeezer.addRecipe(<minecraft:obsidian>, <liquid:endacid> * 125, <stygian:endobsidian>, 25600);

//Add in some extra metal press recipes
MetalPress.addRecipe(<ore:fuelPelletLightlyEnrichedUraniumDioxide>.firstItem * 4, <ore:nuggetLightlyEnrichedUraniumDioxide>, <ore:metalPressMoldFuelPellet>.firstItem, 7200);
MetalPress.addRecipe(<ore:solderItem>.firstItem * 4, <ore:ingotTin>, <immersiveengineering:mold:4>, 3600);
MetalPress.addRecipe(<ore:solderItem>.firstItem * 4, <ore:ingotLead>, <immersiveengineering:mold:4>, 3600);
MetalPress.addRecipe(<ore:solderItem>.firstItem * 4, <ore:ingotAluminum>, <immersiveengineering:mold:4>, 3600);

//Import
import mods.immersiveengineering.DieselHandler;
import mods.immersivetechnology.SteamTurbine;
import mods.immersivetechnology.GasTurbine;
import mods.immersivetechnology.Distiller;
import mods.immersivetechnology.Boiler;
import mods.immersivetechnology.HeatExchanger;
import mods.immersivetechnology.CoolingTower;
import mods.immersiveengineering.Refinery;
import mods.immersiveengineering.Mixer;
import mods.immersiveengineering.BottlingMachine;
import mods.immersiveengineering.MetalPress;
import mods.immersiveengineering.BlastFurnace;
import mods.immersiveengineering.Crusher;
import mods.industrialwires.MarxGenerator;
import mods.immersiveengineering.Squeezer;
import mods.immersiveengineering.AlloySmelter;
import mods.immersiveengineering.Blueprint;
import mods.immersivetweaker.Recycling;
import crafttweaker.item.IItemStack;
import mods.jei.JEI.removeAndHide;
import mods.jei.JEI.hide;


/*
   Fuels & cooling tower - power production changes
*/
   
//IRL Diesel energy value ratios
//This should be 150 but that doesn't work well, you get much more energy with a 6mB/t rate than you loose with a 7mB/t rate (compared to the nominal 6.6667mB/t)
//DieselHandler.removeFuel(<liquid:fuel>);
DieselHandler.removeFuel(<liquid:diesel>);
DieselHandler.addFuel(<liquid:diesel>, 140);
DieselHandler.addDrillFuel(<liquid:gasoline>);

//Immersive Technology things
//Turbine processs buckets/tick to give larger expansion ratio
SteamTurbine.removeFuel(<liquid:steam>);
SteamTurbine.addFuel(<liquid:exhauststeam> * 1000, <liquid:steam> * 1000, 1);

//Gas Turbine fuels to IRL energy ratios
GasTurbine.addFuel(<liquid:fluegas> * 1000, <liquid:refinerygas> * 220, 10);
GasTurbine.addFuel(<liquid:fluegas> * 1000, <liquid:methane> * 220, 10);
GasTurbine.addFuel(<liquid:fluegas> * 1000, <liquid:gasoline> * 160, 10);
GasTurbine.addFuel(<liquid:fluegas> * 1000, <liquid:naphtha> * 160, 10);
GasTurbine.addFuel(<liquid:fluegas> * 1000, <liquid:kerosene> * 150, 10);
GasTurbine.addFuel(<liquid:fluegas> * 1000, <liquid:diesel> * 130, 10);
GasTurbine.addFuel(<liquid:fluegas> * 1000, <liquid:biodiesel> * 160, 10);
GasTurbine.addFuel(<liquid:fluegas> * 1000, <liquid:ethanol> * 240, 10);
GasTurbine.addFuel(<liquid:fluegas> * 1000, <liquid:liquidethene> * 180, 10);
GasTurbine.addFuel(<liquid:fluegas> * 1000, <liquid:liquidhydrogen> * 850, 10);

//Make Distilled Water much more worth it
Distiller.removeRecipe(<liquid:water>);
Distiller.addRecipe(<liquid:distwater> * 900, <liquid:water> * 1000, <immersivetech:material>, 10000, 200, 0.009999999776482582);
Distiller.addRecipe(<liquid:water> * 1000, <liquid:saltwater> * 1000, <immersivetech:material>, 10000, 200, 0.009999999776482582);

//Boilers make 10x the steam to compenstate
Boiler.removeRecipe(<liquid:water>);
Boiler.removeRecipe(<liquid:distwater>);
Boiler.addRecipe(<liquid:steam> * 4500, <liquid:water> * 250, 10);
Boiler.addRecipe(<liquid:steam> * 5000, <liquid:distwater> * 250, 10);

//Add Boiler Fuels
Boiler.removeFuel(<liquid:diesel>);
Boiler.removeFuel(<liquid:gasoline>);
Boiler.removeFuel(<liquid:biodiesel>);
Boiler.removeFuel(<liquid:fluegas>);
Boiler.addFuel(<liquid:refinerygas> * 140, 10, 10);
Boiler.addFuel(<liquid:methane> * 140, 10, 10);
Boiler.addFuel(<liquid:gasoline> * 100, 10, 10);
Boiler.addFuel(<liquid:naphtha> * 100, 10, 10);
Boiler.addFuel(<liquid:kerosene> * 90, 10, 10);
Boiler.addFuel(<liquid:diesel> * 80, 10, 10);
Boiler.addFuel(<liquid:biodiesel> * 100, 10, 10);
Boiler.addFuel(<liquid:ethanol> * 150, 10, 10);
Boiler.addFuel(<liquid:liquidethene> * 110, 10, 10);
Boiler.addFuel(<liquid:liquidhydrogen> * 530, 10, 10);

//Heat Exchanger fuels
HeatExchanger.removeRecipe(<liquid:water> * 250, <liquid:fluegas> * 1000);
HeatExchanger.removeRecipe(<liquid:distwater> * 250, <liquid:fluegas> * 1000);

HeatExchanger.addRecipe(<liquid:steam> * 4500, null, <liquid:water> * 250, <liquid:fluegas> * 1000, 0, 10);
HeatExchanger.addRecipe(<liquid:steam> * 5000, null, <liquid:distwater> * 250, <liquid:fluegas> * 1000, 0, 10);
HeatExchanger.addRecipe(<liquid:steam> * 4500, null, <liquid:water> * 250, <liquid:lava> * 400, 0, 10);
HeatExchanger.addRecipe(<liquid:steam> * 5000, null, <liquid:distwater> * 250, <liquid:lava> * 400, 0, 10);

HeatExchanger.addRecipe(<liquid:steam> * 18000, <liquid:distwater> * 1000, <liquid:water> * 250, <liquid:superheatedwater> * 1000, 0, 10);
HeatExchanger.addRecipe(<liquid:steam> * 20000, <liquid:distwater> * 1000, <liquid:distwater> * 250, <liquid:superheatedwater> * 1000, 0, 10);

//Allow cooling tower to process much more steam
CoolingTower.removeRecipe(<liquid:exhauststeam>, <liquid:water>);
CoolingTower.removeRecipe(<liquid:exhauststeam>, <liquid:distwater>);

CoolingTower.addRecipe(<liquid:water> * 1000, <liquid:water> * 950, <liquid:exhauststeam> * 18000, <liquid:water> * 1000, 3);
CoolingTower.addRecipe(<liquid:distwater> * 900, <liquid:distwater> * 950, <liquid:exhauststeam> * 18000, <liquid:distwater> * 1000, 3);


/*
    Crafting recipes - any 3x3 recipes or recipe changes
*/

//Give structural arms recipes that aren't criminal wastes of resources - the previous ones undergave by 2x!
recipes.remove(<immersiveengineering:metal_decoration2:7>);
recipes.remove(<immersiveengineering:metal_decoration2:8>);
recipes.addShaped(<immersiveengineering:metal_decoration2:7> * 6,
 [[<ore:stickSteel>, null, null],
 [<ore:scaffoldingSteel>, <ore:stickSteel>, null],
 [<ore:scaffoldingSteel>, <ore:scaffoldingSteel>, <ore:stickSteel>]]);
recipes.addShaped(<immersiveengineering:metal_decoration2:8> * 6,
 [[<ore:stickAluminum>, null, null],
 [<ore:scaffoldingAluminum>, <ore:stickAluminum>, null],
 [<ore:scaffoldingAluminum>, <ore:scaffoldingAluminum>, <ore:stickAluminum>]]);

//Make Blast Brick obtainable without the nether, to offset diamonds not being able to be used in tools
//Side note why on earth did it use blaze powder when the point of the coke is to make CO
recipes.remove(<immersiveengineering:stone_decoration:1>);
recipes.addShaped(<immersiveengineering:stone_decoration:1> * 3,
 [[null, null, null],
 [<minecraft:brick_block>, <immersiveengineering:material:8>, <minecraft:brick_block>],
 [<ore:plateIron>, <minecraft:brick_block>, <ore:plateIron>]]);
recipes.addShaped(<immersiveengineering:stone_decoration:2> * 3,
 [[null, null, null],
 [<minecraft:brick_block>, <ore:mechanicalComponentSteel>, <minecraft:brick_block>],
 [<ore:plateSteel>, <minecraft:brick_block>, <ore:plateSteel>]]);
 
//Slightly changed generator block recipe
recipes.remove(<immersiveengineering:metal_decoration0:6>);
recipes.addShaped(<immersiveengineering:metal_decoration0:6> * 2,
 [[<ore:ingotSteel>, <ore:mechanicalComponentSteel>, <ore:ingotSteel>],
 [<ore:stickSteel>, <immersiveengineering:metal_decoration0:1>, <ore:stickSteel>],
 [<ore:ingotSteel>, <ore:mechanicalComponentSteel>, <ore:ingotSteel>]]);

//Make heavy engineering block entirely electrum, to match light engineering block
recipes.replaceAllOccurences(<minecraft:piston>, <ore:ingotElectrum>, <immersiveengineering:metal_decoration0:5>);
 
//Make powder barrels more appealing
recipes.remove(<immersiveengineering:wooden_device0:4>);
recipes.addShaped(<immersiveengineering:wooden_device0:4>,
 [[<ore:gunpowder>, <ore:fiberHemp>, <ore:gunpowder>],
 [<ore:gunpowder>, <immersiveengineering:wooden_device0:1>, <ore:gunpowder>]]);
 
//Give Engineer's Decor machines some more sensical recipes recipes
recipes.remove(<engineersdecor:panzerglass_block>);
recipes.remove(<engineersdecor:small_block_breaker>);
recipes.remove(<engineersdecor:small_tree_cutter>);
recipes.remove(<engineersdecor:small_milking_machine>);
recipes.remove(<engineersdecor:passive_fluid_accumulator>);
recipes.remove(<engineersdecor:straight_pipe_valve>);
recipes.addShaped(<engineersdecor:small_block_breaker>,
 [[<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>],
 [<ore:plateSteel>, <immersiveengineering:toolupgrade:2>, <minecraft:observer>],
 [<ore:mechanicalComponentSteel>, <ore:dustRedstone>, <ore:mechanicalComponentSteel>]]);
recipes.addShaped(<engineersdecor:small_tree_cutter>,
 [[<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>],
 [<ore:plateSteel>, <advancedrocketry:sawbladeiron>, <minecraft:observer>],
 [<ore:mechanicalComponentSteel>, <ore:dustRedstone>, <ore:mechanicalComponentSteel>]]);
recipes.addShaped(<engineersdecor:small_milking_machine>,
 [[<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>],
 [<ore:plateSteel>, <immersiveengineering:metal_device1:6>, <minecraft:observer>],
 [<ore:mechanicalComponentSteel>, <immersiveengineering:metal_device0:4>, <ore:mechanicalComponentSteel>]]);
recipes.addShaped(<engineersdecor:passive_fluid_accumulator>, 
 [[<ore:slabSheetmetalIron>, <immersiveengineering:metal_device1:6>, <ore:slabSheetmetalIron>],
 [<immersiveengineering:metal_device1:6>, <ore:mechanicalComponentAny>, <immersiveengineering:metal_device1:6>],
 [<ore:slabSheetmetalIron>, <immersiveengineering:metal_device1:6>, <ore:slabSheetmetalIron>]]);
recipes.addShaped(<engineersdecor:straight_pipe_valve> * 2, 
 [[<immersiveengineering:metal_device1:6>, <ore:mechanicalComponentAny>, <immersiveengineering:metal_device1:6>]]);
recipes.replaceAllOccurences(<minecraft:obsidian>, <ore:blockSheetmetalSteel>, <engineersdecor:small_mineral_smelter>);

//Allow conveyor belts to be made of HDPE or hemp cloth
recipes.addShaped(<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:conveyor"}) * 4,
 [[<ore:fabricHemp>, <ore:fabricHemp>, <ore:fabricHemp>],
 [<ore:ingotIron>, <ore:dustRedstone>, <ore:ingotIron>]]);
recipes.addShaped(<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:conveyor"}) * 8,
 [[<mekanism:polyethene:2>, <mekanism:polyethene:2>, <mekanism:polyethene:2>],
 [<ore:ingotIron>, <ore:dustRedstone>, <ore:ingotIron>]]);

//Treated wood with plant oil
recipes.addShaped(<immersiveengineering:treated_wood> * 4,
 [[null, <ore:plankWood>, null],
 [<ore:plankWood>, <forge:bucketfilled>.withTag({FluidName: "plantoil", Amount: 1000}), <ore:plankWood>],
 [null, <ore:plankWood>, null]]);
 
//Redstone wire can also be made with silver at a lower efficiency
recipes.addShaped(<immersiveengineering:wirecoil:5> * 2,
 [[null, <ore:wireSilver>, null],
 [<ore:dustRedstone>, <ore:stickWoodAny>, <ore:dustRedstone>],
 [null, <ore:wireSilver>, null]]);
recipes.addShaped(<immersiveengineering:wirecoil:5> * 2,
 [[null, <ore:dustRedstone>, null],
 [<ore:wireSilver>, <ore:stickWoodAny>, <ore:wireSilver>],
 [null, <ore:dustRedstone>, null]]);

//Make battery bank(s) out of higher tier capacitors
recipes.replaceAllOccurences(<ore:dustRedstone>, <ore:blockRedstone>, <immersiveengineering:metal_device0:0>);
recipes.remove(<immersiveengineering:metal_device0:1>);
recipes.remove(<immersiveengineering:metal_device0:2>);
recipes.addShaped(<immersiveengineering:metal_device0:1>,
 [[<ore:ingotSteel>, <ore:ingotSteel>, <ore:ingotSteel>],
 [<ore:ingotElectrum>, <ore:itemBattery>, <ore:ingotElectrum>],
 [<ore:plankTreatedWood>, <ore:itemBattery>, <ore:plankTreatedWood>]]);
recipes.addShaped(<immersiveengineering:metal_device0:2>,
 [[<ore:ingotSteel>, <ore:ingotSteel>, <ore:ingotSteel>],
 [<ore:ingotSilver>, <libvulpes:battery:1>, <ore:ingotSilver>],
 [<ore:plankTreatedWood>, <libvulpes:battery:1>, <ore:plankTreatedWood>]]);
recipes.addShaped(<libvulpes:battery:0>, 
 [[<ore:dustRedstone>, <ore:dustRedstone>, <ore:dustRedstone>],
 [<ore:dustRedstone>, <contenttweaker:small_battery_hull>, <ore:dustRedstone>],
 [<ore:dustRedstone>, <ore:dustRedstone>, <ore:dustRedstone>]]);

//Change engineer's hammer recipe
//I spent waaay too long on custom leather stuff for you not just not use leather.
recipes.replaceAllOccurences(<minecraft:string>, <ore:leatherStrip>, <immersiveengineering:tool:0>);

//Replace hopper in IE focused nozzle with mech. compontent
recipes.replaceAllOccurences(<minecraft:hopper>, <ore:mechanicalComponentSteel>, <immersiveengineering:toolupgrade:7>);

//Replace ingots in wind & water wheels with steel gears
recipes.replaceAllOccurences(<ore:ingotIron>, <ore:gearSteel>, <immersiveengineering:wooden_device1:1>);
recipes.replaceAllOccurences(<ore:ingotSteel>, <ore:gearSteel>, <immersiveengineering:wooden_device1:0>);

//Make tanks and such not use buckets
recipes.remove(<immersiveengineering:toolupgrade:0>);
recipes.remove(<immersiveengineering:toolupgrade:3>);
recipes.remove(<immersiveengineering:jerrycan>);
recipes.addShaped(<immersiveengineering:toolupgrade:0>,
 [[<ore:plateSteel>, <ore:sheetSteel>, null],
 [<ore:sheetSteel>, <ore:dyeBlue>, <ore:sheetSteel>],
 [null, <ore:sheetSteel>, <immersiveengineering:material:8>]]);
recipes.addShaped(<immersiveengineering:toolupgrade:3>,
 [[<immersiveengineering:material:8>, <ore:sheetSteel>, null],
 [<ore:sheetSteel>, <ore:dyeRed>, <ore:sheetSteel>],
 [null, <ore:sheetSteel>, <ore:plateSteel>]]);
recipes.addShaped(<immersiveengineering:jerrycan>,
 [[<immersiveengineering:material:8>, <ore:stickSteel>],
 [<ore:plateIron>, <ore:plateIron>],
 [<ore:plateIron>, <ore:plateIron>]]);

//Make sleeping bag easier to get
recipes.remove(<engineerstools:sleeping_bag>);
recipes.addShaped(<engineerstools:sleeping_bag>,
 [[<ore:string>, <ore:string>, null],
 [<minecraft:carpet:*>, <minecraft:carpet:*>, <ore:wool>],
 [<ore:fabricHemp>, <ore:fabricHemp>, <ore:fabricHemp>]]);
recipes.addShaped(<engineerstools:sleeping_bag>,
 [[<ore:string>, <ore:string>, null],
 [<minecraft:carpet:*>, <minecraft:carpet:*>, <ore:wool>],
 [<ore:leatherSheet>, <ore:leatherSheet>, <ore:leatherSheet>]]);

//Immersive Energy arrows
recipes.replaceAllOccurences(<minecraft:flint>, <flintmod:tool_part_flint>, <immersive_energy:arrow_shocking>);
recipes.addShaped(<immersive_energy:arrow_shocking> * 6,
 [[null, <ore:nuggetElectrum>, <ore:nuggetIron>],
 [<immersiveengineering:wirecoil:7>, <ore:stickTreatedWood>, <ore:nuggetIron>],
 [<ore:feather>, <ore:nuggetLead>, null]]);
recipes.addShaped(<immersive_energy:arrow_penetrating> * 8,
 [[null, null, <ore:nuggetTungsten>],
 [null, <ore:stickTreatedWood>, <ore:nuggetTungsten>],
 [<ore:feather>, null, null]]);
 
//Make bayonet use a Tetra iron sword
recipes.replaceAllOccurences(<minecraft:iron_sword>, <tetra:sword_modular>.withTag({"sword/basic_hilt_material": "basic_hilt/treated_wood", "sword/counterweight_material": "counterweight/iron", "sword/hilt": "sword/basic_hilt", "sword/blade": "sword/basic_blade", "sword/basic_blade_material": "basic_blade/iron", "sword/pommel": "sword/counterweight"}), <immersiveengineering:toolupgrade:4>);
 
//Add a diamond-tungsten-steel drill head
recipes.addShaped(<immersiveengineering:drillhead>.withTag({headDamage: -22000}),
 [[<ore:ingotTungsten>, <ore:dustDiamond>, null],
 [<ore:blockSteel>, <ore:blockTungsten>, <ore:dustDiamond>],
 [<ore:ingotTungsten>, <ore:dustDiamond>, null]]);
 
//Add Barrel recipes from barrel shells
recipes.addShaped(<immersivetech:metal_barrel:1>,
 [[<contenttweaker:metal_barrel_shell>],
 [<ore:plateIron>]]);
recipes.addShaped(<immersiveengineering:metal_device0:4>,
 [[<ore:plateIron>],
 [<contenttweaker:metal_barrel_shell>],
 [<ore:plateIron>]]);
recipes.addShaped(<immersivetech:metal_barrel:2>,
 [[<ore:plateSteel>],
 [<contenttweaker:steel_barrel_shell>],
 [<ore:plateSteel>]]);

//HVDC and HV changes
//Serving up some lovely consistency by renaming and retexturing and rereciping 95% of a mod, what fun!
recipes.addShapeless(<contenttweaker:silver_wire>, [<ore:plateSilver>, <immersiveengineering:tool:1>]);
recipes.remove(<immersiveengineering:wirecoil:2>);
recipes.addShaped(<immersiveengineering:wirecoil:2> * 4,
 [[null, <ore:wireSilver>, null],
 [<ore:wireSilver>, <ore:stickTreatedWood>, <ore:wireSilver>],
 [null, <ore:wireSilver>, null]]);
recipes.remove(<alternatingflux:wirecoil>);
recipes.addShaped(<alternatingflux:wirecoil> * 4,
 [[<ore:dustHOPGraphite>, <ore:wireAluminum>, null],
 [<ore:wireSteel>, <ore:stickTreatedWood>, <ore:wireSteel>],
 [null, <ore:wireAluminum>, <ore:dustHOPGraphite>]]);
recipes.remove(<alternatingflux:connector>);
recipes.addShaped(<alternatingflux:connector> * 8,
 [[null, <ore:ingotAluminum>, null],
 [<immersiveengineering:stone_decoration:8>, <immersivepetroleum:material>, <immersiveengineering:stone_decoration:8>],
 [<immersiveengineering:stone_decoration:8>, <ore:ingotAluminum>, <immersiveengineering:stone_decoration:8>]]);
recipes.remove(<immersiveengineering:connector:4>);
recipes.remove(<immersiveengineering:connector:5>);
recipes.addShaped(<immersiveengineering:connector:4> * 4,
 [[null, <ore:ingotSilver>, null],
 [<minecraft:hardened_clay>, <ore:ingotSilver>, <minecraft:hardened_clay>],
 [<minecraft:hardened_clay>, <ore:ingotSilver>, <minecraft:hardened_clay>]]);
recipes.addShaped(<immersiveengineering:connector:5> * 8,
 [[null, <ore:ingotSilver>, null],
 [<immersiveengineering:stone_decoration:8>, <ore:ingotSilver>, <immersiveengineering:stone_decoration:8>],
 [<immersiveengineering:stone_decoration:8>, <ore:ingotSilver>, <immersiveengineering:stone_decoration:8>]]);

//Remove recipes for IE tools - use Tetra instead
recipes.remove(<immersiveengineering:hoe_steel>);
recipes.remove(<immersiveengineering:sword_steel>);
recipes.remove(<immersiveengineering:shovel_steel>);
recipes.remove(<immersiveengineering:pickaxe_steel>);
recipes.remove(<immersiveengineering:axe_steel>);
 
//Make "Components" blueprint craftable without aluminium
recipes.replaceAllOccurences(<ore:ingotAluminum>, <ore:ingotTin>, <immersiveengineering:blueprint>.withTag({blueprint: "components"}));
recipes.replaceAllOccurences(<ore:plateAluminum>, <ore:plateTin>, <immersiveengineering:toolbox>);
 
//Make "Machine Structures" blueprint craftable
recipes.addShaped(<immersiveengineering:blueprint>.withTag({blueprint: "Machine Structures"}),
 [[null, <ore:ingotOsmium>, null],
 [<ore:dyeBlue>, <ore:dyeBlue>, <ore:dyeBlue>],
 [<ore:paper>, <ore:paper>, <ore:paper>]]);

//Make "Fission Reactor Components" blueprint craftable
recipes.addShaped(<immersiveengineering:blueprint>.withTag({blueprint: "Fission Reactor Components"}),
 [[<immersiveengineering:metal_device1:6>, <ore:ingotZirconiumNiobium>, <immersiveengineering:metal_device1:6>],
 [<ore:dyeBlue>, <ore:dyeBlue>, <ore:dyeBlue>],
 [<ore:paper>, <ore:paper>, <ore:paper>]]); 

//Make "Rocketry Components" blueprint craftable
recipes.addShaped(<immersiveengineering:blueprint>.withTag({blueprint: "Rocket Components"}),
 [[<immersiveengineering:metal_device1:6>, <contenttweaker:titanium_aluminide_scaffolding_panel>, <immersiveengineering:metal_device1:6>],
 [<ore:dyeBlue>, <ore:dyeBlue>, <ore:dyeBlue>],
 [<ore:paper>, <ore:paper>, <ore:paper>]]); 
 
//Make "Extrusion Dies" blueprint craftable
recipes.addShaped(<immersiveengineering:blueprint>.withTag({blueprint: "Extrusion Dies"}),
 [[<immersiveengineering:tool:0>, <ore:plateSteel>, <immersiveengineering:tool:1>],
 [<ore:dyeBlue>, <ore:dyeBlue>, <ore:dyeBlue>],
 [<ore:paper>, <ore:paper>, <ore:paper>]]);
 
//Make "Heavy Metal Press Dies" blueprint craftable
recipes.addShaped(<immersiveengineering:blueprint>.withTag({blueprint: "Heavy Metal Press Dies"}),
 [[null, <ore:blockSteel>, null],
 [<ore:dyeBlue>, <ore:dyeBlue>, <ore:dyeBlue>],
 [<ore:paper>, <ore:paper>, <ore:paper>]]);

//Make "Scaffolding Assembly" blueprint craftable
recipes.addShaped(<immersiveengineering:blueprint>.withTag({blueprint: "Scaffolding Assembly"}),
 [[null, <ore:scaffoldingSteel>, null],
 [<ore:dyeBlue>, <ore:dyeBlue>, <ore:dyeBlue>],
 [<ore:paper>, <ore:paper>, <ore:paper>]]);
 

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

//Helium botting machine recipes
BottlingMachine.addRecipe(<contenttweaker:pressurized_helium_tank>, <immersiveengineering:toolupgrade>, <liquid:helium> * 4000);

//Superconductor Cable bottling machine recipes
BottlingMachine.addRecipe(<mekanism:transmitter>.withTag({tier: 3}), <contenttweaker:unfilled_superconductor_cable>, <liquid:liquidnitrogen> * 125);

//Remove Steel Block Recipe, it makes no sense
BlastFurnace.removeRecipe(<immersiveengineering:storage:8>);

//Add Iron output to Oxidized Ferric Sand
BlastFurnace.addRecipe(<rustic:dust_tiny_iron> * 3, <advancedrocketry:hotturf>, 400, <minecraft:sand:1>);

//Dolomite recipes
furnace.addRecipe(<contenttweaker:calcined_crushed_dolomite>, <contenttweaker:crushed_dolomite>);

//Blaze Powder to sulfur & soul sand to nitrate (gunpowder!)
BlastFurnace.addRecipe(<immersiveengineering:material:25> * 2, <minecraft:blaze_powder> * 3, 600, <immersiveengineering:material:7> * 1);
BlastFurnace.addRecipe(<minecraft:sand> * 3, <minecraft:soul_sand> * 3, 600, <immersiveengineering:material:24> * 2);


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
Crusher.addRecipe(<contenttweaker:charcoal_dust>, <minecraft:coal:1>, 2400);
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
Squeezer.addRecipe(<minecraft:skull:1>, <liquid:endacid> * 125, <witherskelefix:fragment> * 16, 512000);


/*
    Blueprint recipes - anything that goes in the "advanced crafting" of the IE Worrkbench
*/

//Add iridium and tungsten Arc Furnace Electrodes that are "infinite"
Blueprint.addRecipe("electrode", <immersiveengineering:graphite_electrode>.withTag({graphDmg:-6048000}), [<immersiveengineering:graphite_electrode>, <ore:stickTungsten>, <ore:stickTungsten>, <ore:stickTungsten>, <ore:stickTungsten>]);
Blueprint.addRecipe("electrode", <immersiveengineering:graphite_electrode>.withTag({graphDmg:-24480000}), [<immersiveengineering:graphite_electrode>, <ore:stickIridium>, <ore:stickIridium>, <ore:stickIridium>, <ore:stickIridium>]);

//Add REDIA Repair blueprint, and make REDIA tool crafting make more sense [changed from adv. tools blueprint]
recipes.remove(<engineerstools:redia_tool>);
Blueprint.removeRecipe(<immersive_energy:toolupgrade:0>);
Blueprint.removeRecipe(<immersive_energy:toolupgrade:1>);
Blueprint.removeRecipe(<immersive_energy:toolupgrade:2>);
Blueprint.removeRecipe(<immersive_energy:toolupgrade:3>);
Blueprint.removeRecipe(<immersive_energy:hefty_wrench>);
hide(<immersive_energy:toolupgrade:0>);
hide(<immersive_energy:toolupgrade:1>);
hide(<immersive_energy:toolupgrade:2>);
hide(<immersive_energy:toolupgrade:3>);
hide(<immersive_energy:hefty_wrench>);
Blueprint.addRecipe("advanced_tool", <engineerstools:redia_tool>, [<engineerstools:redia_tool>.anyDamage(), <ore:dustDiamond>, <ore:stickSteel>]);
Blueprint.addRecipe("advanced_tool", <engineerstools:redia_tool>, [<ore:dustDiamond>, <ore:stickSteel> * 2, <ore:plateSteel> * 2, <ore:ingotSteel>, <ore:stickTreatedWood> * 2]);

//Make Immersive Energy's Solar Panels recipes closer to that of 1st Generation PV Cells (1950s)
Blueprint.removeRecipe(<immersive_energy:material:1>);
Blueprint.addRecipe("solar", <immersive_energy:material:1>, [<ore:paneGlassColorless>, <contenttweaker:lithium_doped_silicon_wafer>, <ore:plateAluminum>]);
Blueprint.removeRecipe(<immersive_energy:metal_generators0>);
Blueprint.addRecipe("solar", <immersive_energy:metal_generators0>, [<immersive_energy:material:1>, <ore:gearSteel>, <ore:plateSteel>]);

//Mechanical Components
Blueprint.removeRecipe(<immersiveengineering:material:8>);
Blueprint.removeRecipe(<immersiveengineering:material:9>);
Blueprint.addRecipe("components", <immersiveengineering:material:8>, [<ore:plateIron>, <ore:plateIron>, <ore:ingotCopper>]);
Blueprint.addRecipe("components", <immersiveengineering:material:9>, [<immersiveengineering:metal:38>, <immersiveengineering:metal:38>, <ore:ingotCopper>]);
Blueprint.addRecipe("components", <contenttweaker:high_carbon_steel_mechanical_component>, [<ore:plateHighCarbonSteel>, <ore:plateHighCarbonSteel>, <ore:ingotCopper>]);
Blueprint.addRecipe("components", <contenttweaker:maraging_steel_mechanical_component>, [<ore:plateMaragingSteel>, <ore:plateMaragingSteel>, <ore:ingotCopper>]);

//Molds
Blueprint.addRecipe("molds", <contenttweaker:ingot_mold>, [<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>, <immersiveengineering:tool:1>]);

//Extrusion dies blueprint
Blueprint.addRecipe("Extrusion Dies", <contenttweaker:small_pipe_die>, [<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>, <immersiveengineering:tool:1>]);
Blueprint.addRecipe("Extrusion Dies", <contenttweaker:pipe_die>, [<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>, <immersiveengineering:tool:1>]);
Blueprint.addRecipe("Extrusion Dies", <contenttweaker:barrel_die>, [<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>, <immersiveengineering:tool:1>]);
Blueprint.addRecipe("Extrusion Dies", <contenttweaker:rod_die>, [<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>, <immersiveengineering:tool:1>]);
Blueprint.addRecipe("Extrusion Dies", <contenttweaker:wire_die>, [<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>, <immersiveengineering:tool:1>]);

//Heavy Metal Press dies blueprint
Blueprint.addRecipe("Heavy Metal Press Dies", <contenttweaker:bell_die>, [<ore:blockSteel>, <ore:stickTungsten>,  <immersiveengineering:tool:0>]);
Blueprint.addRecipe("Heavy Metal Press Dies", <contenttweaker:scaffolding_panel_die>, [<ore:blockSteel>, <ore:stickTungsten>, <immersiveengineering:tool:0>]);

//Small Battery Hull and batteries
Blueprint.addRecipe("components", <contenttweaker:small_battery_hull> * 4, [<ore:stickCopper>, <ore:plateLead>, <ore:plateTin>, <ore:plateLead>, <ore:plateTin>, <ore:plateLead>]);

//Make circuit assembly make more sense
Blueprint.removeRecipe(<immersiveengineering:material:27>);
Blueprint.addRecipe("components", <immersiveengineering:material:26> * 6, [<ore:blockGlass>, <ore:plateNickel>, <ore:wireTungsten>, <ore:dustRedstone>]);
Blueprint.addRecipe("components", <immersiveengineering:material:27>, [<ore:plateSteel>, <immersiveengineering:stone_decoration:8>, <ore:wireCopper> * 4, <ore:electronTube> * 2]);
Blueprint.addRecipe("components", <contenttweaker:treated_wood_circuit_board>, [<ore:slabTreatedWood>]);
Blueprint.addRecipe("components", <mekanism:controlcircuit>, [<immersiveengineering:material:27> * 2, <contenttweaker:treated_wood_circuit_board>, <immersiveengineering:wirecoil:5> * 2]);

//Environmental Suit blueprint
Blueprint.removeRecipe(<immersive_energy:power_armor_suit_head>);
Blueprint.removeRecipe(<immersive_energy:power_armor_suit_body>);
Blueprint.removeRecipe(<immersive_energy:power_armor_suit_leggs>);
Blueprint.removeRecipe(<immersive_energy:power_armor_suit_boots>);
Blueprint.addRecipe("powerarmor", <immersive_energy:power_armor_suit_head>, [<immersiveengineering:steel_armor_head>, <ore:plateTungsten>, <ore:fabricHemp> * 4, <immersiveengineering:earmuffs>]);
Blueprint.addRecipe("powerarmor", <immersive_energy:power_armor_suit_body>, [<immersiveengineering:steel_armor_chest>, <ore:plateTungsten> * 2, <ore:fabricHemp> * 4, <immersiveengineering:metal_device0:2>]);
Blueprint.addRecipe("powerarmor", <immersive_energy:power_armor_suit_leggs>, [<immersiveengineering:steel_armor_legs>, <ore:plateTungsten> * 2, <ore:fabricHemp> * 4, <immersiveengineering:wirecoil:2> * 4]);
Blueprint.addRecipe("powerarmor", <immersive_energy:power_armor_suit_boots>, [<immersiveengineering:steel_armor_feet>, <ore:plateTungsten>, <ore:fabricHemp> * 4, <ore:blockSlime>]);
Blueprint.addRecipe("powerarmor", <advancedrocketry:spacehelmet>, [<minecraft:leather_helmet>, <ore:sheetTitaniumAluminide> * 2, <quark:quilted_wool>, <ore:paneGlass>]);
Blueprint.addRecipe("powerarmor", <advancedrocketry:spacechestplate>, [<minecraft:leather_chestplate>, <ore:sheetTitaniumAluminide> * 4, <quark:quilted_wool>, <advancedrocketry:fueltank>]);
Blueprint.addRecipe("powerarmor", <advancedrocketry:spaceleggings>, [<minecraft:leather_leggings>, <ore:sheetTitaniumAluminide> * 4, <quark:quilted_wool>, <ore:stickSteel>]);
Blueprint.addRecipe("powerarmor", <advancedrocketry:spaceboots>, [<minecraft:leather_boots>, <ore:sheetTitaniumAluminide> * 2, <quark:quilted_wool>, <ore:plateSteel>]);
Blueprint.addRecipe("powerarmor", <advancedrocketry:pressuretank:0>, [<ore:sheetIron>, <ore:stickIron>, <ore:stickIron>, <ore:sheetIron>]);
Blueprint.addRecipe("powerarmor", <advancedrocketry:pressuretank:1>, [<ore:sheetSteel>, <ore:stickSteel>, <ore:stickSteel>, <ore:sheetSteel>]);
Blueprint.addRecipe("powerarmor", <advancedrocketry:pressuretank:2>, [<ore:sheetAluminum>, <ore:stickAluminum>, <ore:stickAluminum>, <ore:sheetAluminum>]);
Blueprint.addRecipe("powerarmor", <advancedrocketry:pressuretank:3>, [<ore:sheetTitanium>, <ore:stickTitanium>, <ore:stickTitanium>, <ore:sheetTitanium>]);

//Fission reactor blueprint
recipes.remove(<rustic:stone_pillar>);
Blueprint.addRecipe("Fission Reactor Components", <rustic:stone_pillar>, [<contenttweaker:zirconium_niobium_frame>, <contenttweaker:small_zirconium_niobium_pipe> * 9]);
Blueprint.addRecipe("Fission Reactor Components", <contenttweaker:fission_reactor_fuel_rod_assembly_pipe_connector>, [<immersiveengineering:metal_decoration1:1>, <engineersdecor:straight_pipe_valve_redstone_analog>, <immersiveengineering:metal_device1:6>]);
Blueprint.addRecipe("Fission Reactor Components", <contenttweaker:fission_reactor_calandria_casing_shell>, [<contenttweaker:steel_scaffolding_panel> * 6, <libvulpes:productsheet:6> * 6, <ore:sheetLead> * 6]);
Blueprint.addRecipe("Fission Reactor Components", <contenttweaker:fission_reactor_calandria_casing_shell>, [<contenttweaker:high_carbon_steel_scaffolding_panel> * 6, <contenttweaker:high_carbon_steel_sheet> * 6, <ore:sheetLead> * 6]);
Blueprint.addRecipe("Fission Reactor Components", <contenttweaker:fission_reactor_calandria_casing_shell>, [<contenttweaker:maraging_steel_scaffolding_panel> * 6, <contenttweaker:maraging_steel_sheet> * 6, <ore:sheetLead> * 6]);
recipes.remove(<immersiveengineering:stone_decoration:7>);
Blueprint.addRecipe("Fission Reactor Components", <immersiveengineering:stone_decoration:7>, [<engineersdecor:rebar_concrete>, <ore:plateLead>, <ore:plateLead>, <ore:plateLead>, <ore:plateLead>]);

//Rocketry blueprint
Blueprint.addRecipe("Rocket Components", <contenttweaker:titanium_compressor_blade> * 32, [<ore:stickTitanium>, <ore:plateTitanium>, <ore:stickTitanium>, <ore:plateTitanium>, <ore:ingotTitanium>, <ore:ingotTitanium>]);
Blueprint.addRecipe("Rocket Components", <contenttweaker:titanium_compressor>, [<contenttweaker:titanium_compressor_blade> * 16, <ore:stickSteel>]);
Blueprint.addRecipe("Rocket Components", <contenttweaker:turbopump>, [<ore:plateSteel> * 4, <contenttweaker:titanium_compressor>, <ore:circuitAdvanced>, <contenttweaker:small_titanium_pipe> * 4]);
Blueprint.addRecipe("Rocket Components", <advancedrocketry:fueltank>, [<contenttweaker:titanium_aluminide_scaffolding_panel> * 2, <contenttweaker:pressurized_helium_tank>, <contenttweaker:fuel_tank_shell>, <ore:stickTitaniumAluminide> * 4]);
Blueprint.addRecipe("Rocket Components", <advancedrocketry:fueltank>, [<contenttweaker:maraging_steel_scaffolding_panel> * 2, <contenttweaker:pressurized_helium_tank>, <contenttweaker:fuel_tank_shell>, <ore:stickMaragingSteel> * 4]);
Blueprint.addRecipe("Rocket Components", <advancedrocketry:rocketmotor>, [<contenttweaker:titanium_aluminide_scaffolding_panel> * 2, <contenttweaker:turbopump>, <contenttweaker:small_titanium_pipe> * 4, <contenttweaker:rocket_engine_bell>]);
Blueprint.addRecipe("Rocket Components", <advancedrocketry:advrocketmotor>, [<contenttweaker:maraging_steel_scaffolding_panel> * 2, <contenttweaker:turbopump>, <contenttweaker:small_titanium_pipe> * 4, <contenttweaker:advanced_rocket_engine_bell>]);
Blueprint.addRecipe("Rocket Components", <contenttweaker:mirror_assembly>, [<ore:sheetAluminum> * 64, <ore:sheetAluminum> * 64, <ore:wireAluminum> * 32, <ore:stickAluminum> * 16]);
Blueprint.addRecipe("Rocket Components", <contenttweaker:collection_array>, [<advancedrocketry:satellitepowersource:1> * 8, <libvulpes:structuremachine>, <immersiveengineering:metal_decoration0:2> * 2, <immersiveengineering:material:14> * 4]);
Blueprint.addRecipe("Rocket Components", <advancedrocketry:drill>, [<contenttweaker:mirror_assembly> * 4, <contenttweaker:collection_array> * 4]);

//Scaffolding blueprint
Blueprint.addRecipe("Scaffolding Assembly", <immersiveengineering:metal_decoration1:1> * 1, [<contenttweaker:steel_scaffolding_panel> * 6]);
Blueprint.addRecipe("Scaffolding Assembly", <immersiveengineering:metal_decoration1:1> * 1, [<contenttweaker:high_carbon_steel_scaffolding_panel> * 6]);
Blueprint.addRecipe("Scaffolding Assembly", <immersiveengineering:metal_decoration1:1> * 1, [<contenttweaker:maraging_steel_scaffolding_panel> * 6]);
Blueprint.addRecipe("Scaffolding Assembly", <immersiveengineering:metal_decoration1:5> * 1, [<contenttweaker:aluminium_scaffolding_panel> * 6]);
Blueprint.addRecipe("Scaffolding Assembly", <contenttweaker:zirconium_niobium_frame> * 1, [<contenttweaker:zirconium_niobium_scaffolding_panel> * 6]);
Blueprint.addRecipe("Scaffolding Assembly", <advancedrocketry:structuretower> * 1, [<contenttweaker:steel_scaffolding_panel> * 4]);
Blueprint.addRecipe("Scaffolding Assembly", <advancedrocketry:structuretower> * 1, [<contenttweaker:high_carbon_steel_scaffolding_panel> * 4]);
Blueprint.addRecipe("Scaffolding Assembly", <advancedrocketry:structuretower> * 1, [<contenttweaker:maraging_steel_scaffolding_panel> * 4]);

//Large Metal Press die blueprint



/*
    Recycling and hiding items
*/

//Recycling 
Recycling.makeStackInvalidRecyclingOutput(<immersiveengineering:metal:21> * 2);
Recycling.allowItemForRecycling(<immersiveengineering:metal_decoration1:*>);
Recycling.allowItemForRecycling(<immersiveengineering:metal_decoration2:*>);
Recycling.makeStackInvalidRecyclingOutput(<immersiveengineering:metal_decoration0:2>);


//Remove Ore Crushing Hammer from JEI, and its recipes
removeAndHide(<engineerstools:crushing_hammer>);
recipes.remove(<ore:dustIron>);
recipes.remove(<ore:dustGold>);
recipes.remove(<ore:dustCopper>);
recipes.remove(<ore:dustAluminum>);
recipes.remove(<ore:dustLead>);
recipes.remove(<ore:dustSilver>);
recipes.remove(<ore:dustNickel>);
recipes.remove(<ore:dustUranium>);

//Remove Industrial Wire IC2 wires from NEI because we do not have IC2
var industrialWiresRemovals = [<industrialwires:ic2_connector:0>,
                               <industrialwires:ic2_connector:1>,
                               <industrialwires:ic2_connector:2>,
                               <industrialwires:ic2_connector:3>,
                               <industrialwires:ic2_connector:4>,
                               <industrialwires:ic2_connector:5>,
                               <industrialwires:ic2_connector:6>,
                               <industrialwires:ic2_connector:7>,
                               <industrialwires:ic2_connector:8>,
                               <industrialwires:ic2_connector:9>,
                               <industrialwires:ic2_wire_coil:0>,
                               <industrialwires:ic2_wire_coil:1>,
                               <industrialwires:ic2_wire_coil:2>,
                               <industrialwires:ic2_wire_coil:3>,
                               <industrialwires:ic2_wire_coil:4>,
                               <industrialwires:ic2_wire_coil:5>,
                               <industrialwires:ic2_wire_coil:6>,
                               <industrialwires:ic2_wire_coil:7>
                               ] as IItemStack[];

for item in industrialWiresRemovals {
    removeAndHide(item);
    }

//Hide unfinished Questionably Immersive items
hide(<questionablyimmersive:metal_device>);
hide(<questionablyimmersive:metal_device:1>);

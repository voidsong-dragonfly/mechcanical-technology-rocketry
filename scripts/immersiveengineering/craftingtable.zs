//Import
import mods.immersivetweaker.Recycling;
import crafttweaker.item.IItemStack;
import mods.jei.JEI.removeAndHide;
import mods.jei.JEI.hide;



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
 [<ore:dustRedstone>, <ore:smallBatteryHullItem>, <ore:dustRedstone>],
 [<ore:dustRedstone>, <ore:dustRedstone>, <ore:dustRedstone>]]);

//Change engineer's hammer recipe
//I spent waaay too long on custom leather stuff for you not just not use leather.
recipes.replaceAllOccurences(<minecraft:string>, <ore:leatherStrip>, <immersiveengineering:tool:0>);

//Small IE recipe changes
recipes.replaceAllOccurences(<ore:ingotIron>, <ore:gearSteel>, <immersiveengineering:wooden_device1:1>);
recipes.replaceAllOccurences(<ore:ingotSteel>, <ore:gearSteel>, <immersiveengineering:wooden_device1:0>);
recipes.remove(<immersiveengineering:toolupgrade:7>);

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

//Make bayonet use a Tetra iron sword
recipes.replaceAllOccurences(<minecraft:iron_sword>, <tetra:sword_modular>.withTag({"sword/basic_hilt_material": "basic_hilt/treated_wood", "sword/counterweight_material": "counterweight/iron", "sword/hilt": "sword/basic_hilt", "sword/blade": "sword/basic_blade", "sword/basic_blade_material": "basic_blade/iron", "sword/pommel": "sword/counterweight"}), <immersiveengineering:toolupgrade:4>);
 
//Redo railgun crafting to use supercapacitors and to be closer to 1.16 IE
recipes.remove(<immersiveengineering:railgun>);
recipes.addShaped(<immersiveengineering:railgun>,
 [[null, <ore:supercapacitorItem>, <immersiveengineering:material:13>],
 [<ore:ingotSteel>, <immersiveengineering:metal_decoration0:1>, <immersiveengineering:material:27>],
 [<immersiveengineering:metal_decoration0:1>, <ore:ingotSteel>, null]]);
recipes.replaceAllOccurences(<immersiveengineering:metal_device0:2>, <ore:supercapacitorItem>, <immersiveengineering:toolupgrade:9>);
 
//Add a diamond-tungsten-steel drill head
recipes.addShaped(<immersiveengineering:drillhead>.withTag({headDamage: -22000}),
 [[<ore:ingotTungsten>, <ore:dustDiamond>, null],
 [<ore:blockSteel>, <ore:blockTungsten>, <ore:dustDiamond>],
 [<ore:ingotTungsten>, <ore:dustDiamond>, null]]);
 
//Add Barrel recipes from barrel shells
recipes.addShaped(<immersivetech:metal_barrel:1>,
 [[<ore:machineCasingMetalBarrelShell>],
 [<ore:plateIron>]]);
recipes.addShaped(<immersiveengineering:metal_device0:4>,
 [[<ore:plateIron>],
 [<ore:machineCasingMetalBarrelShell>],
 [<ore:plateIron>]]);
recipes.addShaped(<immersivetech:metal_barrel:2>,
 [[<ore:plateSteel>],
 [<ore:machineCasingSteelBarrelShell>],
 [<ore:plateSteel>]]);

//Scaffolding recipes
recipes.addShaped(<immersiveengineering:metal_decoration1:1>,
 [[null, <ore:scaffoldingPanelSteel>, <ore:scaffoldingPanelSteel>],
 [<ore:scaffoldingPanelSteel>, null, <ore:scaffoldingPanelSteel>],
 [<ore:scaffoldingPanelSteel>, <ore:scaffoldingPanelSteel>, null]]);
recipes.addShaped(<immersiveengineering:metal_decoration1:5>,
 [[null, <ore:scaffoldingPanelAluminium>, <ore:scaffoldingPanelAluminium>],
 [<ore:scaffoldingPanelAluminium>, null, <ore:scaffoldingPanelAluminium>],
 [<ore:scaffoldingPanelAluminium>, <ore:scaffoldingPanelAluminium>, null]]);
recipes.addShaped(<ore:frameZirconiumNiobiumAlloy>.firstItem,
 [[null, <ore:scaffoldingPanelZirconiumNiobiumAlloy>, <ore:scaffoldingPanelZirconiumNiobiumAlloy>],
 [<ore:scaffoldingPanelZirconiumNiobiumAlloy>, null, <ore:scaffoldingPanelZirconiumNiobiumAlloy>],
 [<ore:scaffoldingPanelZirconiumNiobiumAlloy>, <ore:scaffoldingPanelZirconiumNiobiumAlloy>, null]]);
recipes.addShaped(<ore:frameTitanium>.firstItem,
 [[null, <ore:scaffoldingPanelTitanium>, <ore:scaffoldingPanelTitanium>],
 [<ore:scaffoldingPanelTitanium>, null, <ore:scaffoldingPanelTitanium>],
 [<ore:scaffoldingPanelTitanium>, <ore:scaffoldingPanelTitanium>, null]]);
 
//HVDC and HV changes
//Serving up some lovely consistency by renaming and retexturing and rereciping 95% of a mod, what fun!
//HV
recipes.addShaped(<immersiveengineering:wirecoil:2> * 4,
 [[null, <ore:wireSteel>, null],
 [<ore:wireSilver>, <ore:stickWoodAny>, <ore:wireSilver>],
 [null, <ore:wireSteel>, null]]);
recipes.addShaped(<immersiveengineering:wirecoil:2> * 4,
 [[null, <ore:wireSilver>, null],
 [<ore:wireSteel>, <ore:stickWoodAny>, <ore:wireSteel>],
 [null, <ore:wireSilver>, null]]);
recipes.addShaped(<immersiveengineering:connector:4> * 4,
 [[null, <ore:ingotSilver>, null],
 [<minecraft:hardened_clay>, <ore:ingotSilver>, <minecraft:hardened_clay>],
 [<minecraft:hardened_clay>, <ore:ingotSilver>, <minecraft:hardened_clay>]]);
recipes.addShaped(<immersiveengineering:connector:5> * 8,
 [[null, <ore:ingotSilver>, null],
 [<immersiveengineering:stone_decoration:8>, <ore:ingotSilver>, <immersiveengineering:stone_decoration:8>],
 [<immersiveengineering:stone_decoration:8>, <ore:ingotSilver>, <immersiveengineering:stone_decoration:8>]]);
//HVDC
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

//Remove recipes for IE tools - use Tetra instead
recipes.remove(<immersiveengineering:hoe_steel>);
recipes.remove(<immersiveengineering:sword_steel>);
recipes.remove(<immersiveengineering:shovel_steel>);
recipes.remove(<immersiveengineering:pickaxe_steel>);
recipes.remove(<immersiveengineering:axe_steel>);

//Charcoal precursor
recipes.addShapeless(<ore:sludgeCharcoalPrecursor>.firstItem, [<ore:dustWood>, <ore:dustWood>, <ore:dustWood>, <ore:dustWood>, <ore:dustWood>, <ore:dustWood>, <ore:dustWood>, <ore:dustWood>, <immersivepetroleum:material>]);



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


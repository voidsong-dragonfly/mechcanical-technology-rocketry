//Import
import mods.immersivetweaker.Recycling;
import crafttweaker.item.IItemStack;
import mods.jei.JEI.removeAndHide;
import mods.jei.JEI.hide;



/*
    Crafting recipes - any 3x3 recipes or recipe changes
*/

//Remove useless plate crafting
recipes.removeByRegex("immersiveengineering:material/plate_.*");

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

//Make Blast Brick obtainable without the nether, to offset diamonds not being able to be used in tools, and other brick tweaks
//Side note why on earth did it use blaze powder when the point of the coke is to make CO
recipes.remove(<immersiveengineering:stone_decoration:1>);
recipes.remove(<immersiveengineering:stone_decoration:2>);
recipes.remove(<immersivetech:stone_decoration:0>);
recipes.addShaped(<immersiveengineering:stone_decoration:1> * 3,
 [[<ore:plateIron>, <ore:ingotBrick>, <ore:plateIron>],
 [<ore:ingotBrick>, <minecraft:brick_block>, <ore:ingotBrick>],
 [<ore:plateIron>, <ore:ingotBrick>, <ore:plateIron>]]);
recipes.addShaped(<immersiveengineering:stone_decoration:2>,
 [[<ore:nuggetSteel>, <ore:nuggetSteel>, <ore:nuggetSteel>],
 [<ore:ingotBrickNether>, <immersiveengineering:stone_decoration:1>, <ore:ingotBrickNether>],
 [<ore:nuggetSteel>, <engineersdecor:slag_brick_slab>, <ore:nuggetSteel>]]);
recipes.addShaped(<immersiveengineering:stone_decoration:2> * 3,
 [[<ore:plateSteel>, <ore:ingotBrickNether>, <ore:plateSteel>],
 [<ore:ingotBrickNether>, <engineersdecor:slag_brick_block>, <ore:ingotBrickNether>],
 [<ore:plateSteel>, <ore:ingotBrickNether>, <ore:plateSteel>]]);
recipes.addShaped(<immersivetech:stone_decoration>,
 [[<ore:nuggetSteel>, <ore:nuggetSteel>, <ore:nuggetSteel>],
 [<ore:ingotBrickNether>, <immersiveengineering:stone_decoration:0>, <ore:ingotBrickNether>],
 [<ore:nuggetSteel>, <quark:soul_sandstone_slab>, <ore:nuggetSteel>]]);
recipes.addShaped(<immersivetech:stone_decoration> * 3,
 [[<ore:plateSteel>, <ore:ingotBrickNether>, <ore:plateSteel>],
 [<ore:ingotBrickNether>, <quark:soul_sandstone>, <ore:ingotBrickNether>],
 [<ore:plateSteel>, <ore:ingotBrickNether>, <ore:plateSteel>]]);
 
//Slightly changed generator block recipe
recipes.remove(<immersiveengineering:metal_decoration0:6>);
recipes.addShaped(<immersiveengineering:metal_decoration0:6> * 2,
 [[<ore:ingotSteel>, <ore:mechanicalComponentSteel>, <ore:ingotSteel>],
 [<ore:stickSteel>, <immersiveengineering:metal_decoration0:1>, <ore:stickSteel>],
 [<ore:ingotSteel>, <ore:mechanicalComponentSteel>, <ore:ingotSteel>]]);

//Slightly changed TEG recipe
recipes.addShaped(<immersiveengineering:metal_device1:3>,
 [[<ore:ingotSteel>, <ore:ingotSteel>, <ore:ingotSteel>],
 [<ore:plateNickel>, <ore:coilCopper>, <ore:plateNickel>],
 [<ore:plateCopper>, <ore:plateNickel>, <ore:plateCopper>]]);

//Slightly changed control panel creator recipe
recipes.addShaped(<industrialwires:control_panel:3>,
 [[<ore:stickSteel>, <immersiveengineering:material:27>, <ore:stickSteel>],
 [<ore:stickSteel>, <immersiveengineering:drillhead>, <ore:stickSteel>],
 [<ore:stickSteel>, <ore:plateNickel>, <ore:stickSteel>]]);
 
//Make heavy engineering block entirely bronze, to match light engineering block
recipes.remove(<immersiveengineering:metal_decoration0:5>);
recipes.addShaped(<immersiveengineering:metal_decoration0:5> * 2,
 [[<ore:ingotSteel>, <ore:mechanicalComponentSteel>, <ore:ingotSteel>],
 [<ore:ingotBronze>, <ore:ingotBronze>, <ore:ingotBronze>],
 [<ore:ingotSteel>, <ore:mechanicalComponentSteel>, <ore:ingotSteel>]]);

//Slightly changed pressure head engineering block
recipes.remove(<magneticraft:multiblock_parts>);
recipes.addShaped(<magneticraft:multiblock_parts> * 2,
 [[<ore:ingotMaragingSteel>, <ore:mechanicalComponentMaragingSteel>, <ore:ingotMaragingSteel>],
 [<ore:blockMolybdenum>, <ore:blockMolybdenum>, <ore:blockMolybdenum>],
 [<ore:ingotMaragingSteel>, <ore:mechanicalComponentMaragingSteel>, <ore:ingotMaragingSteel>]]);

//Add in bearing recipe
recipes.addShaped(<contenttweaker:lubricated_bearing> * 2,
 [[<ore:ingotSteel>, <immersiveengineering:toolupgrade:1>, <ore:ingotSteel>],
 [<ore:mechanicalComponentSteel>, <ore:stickSteel>, <ore:mechanicalComponentSteel>],
 [<ore:ingotSteel>, <immersiveengineering:toolupgrade:1>, <ore:ingotSteel>]]);
recipes.addShaped(<contenttweaker:magnetic_bearing> * 2,
 [[<ore:ingotMaragingSteel>, <contenttweaker:superconductive_coil> |  <contenttweaker:high_current_superconductive_coil>, <ore:ingotMaragingSteel>],
 [<ore:mechanicalComponentMaragingSteel>, <ore:stickMaragingSteel>, <ore:mechanicalComponentMaragingSteel>],
 [<ore:ingotMaragingSteel>, <contenttweaker:superconductive_coil> |  <contenttweaker:high_current_superconductive_coil>, <ore:ingotMaragingSteel>]]);

//Make powder barrels more appealing
recipes.remove(<immersiveengineering:wooden_device0:4>);
recipes.addShaped(<immersiveengineering:wooden_device0:4>,
 [[<ore:gunpowder>, <ore:fiberHemp>, <ore:gunpowder>],
 [<ore:gunpowder>, <immersiveengineering:wooden_device0:1>, <ore:gunpowder>]]);
 
//Fix & de-constantan AF's transformer
recipes.addShaped(<alternatingflux:connector:1>,
 [[<immersiveengineering:connector:4>, null, <alternatingflux:connector:0>],
 [<ore:ingotAnnealedCopper>, <immersiveengineering:metal_decoration0:2>, <ore:ingotAnnealedCopper>],
 [<ore:ingotIron>, <ore:ingotIron>, <ore:ingotIron>]]);
 
//Give Engineer's Decor machines some more sensical recipes
recipes.remove(<engineersdecor:panzerglass_block>);
recipes.remove(<engineersdecor:small_block_breaker>);
recipes.remove(<engineersdecor:small_tree_cutter>);
recipes.remove(<engineersdecor:small_milking_machine>);
recipes.remove(<engineersdecor:passive_fluid_accumulator>);
recipes.remove(<engineersdecor:straight_pipe_valve>);
recipes.addShaped(<engineersdecor:small_block_breaker>,
 [[<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>],
 [<ore:plateSteel>, <immersiveengineering:toolupgrade:2>, <minecraft:observer>],
 [<ore:mechanicalComponentAny>, <ore:dustRedstone>, <ore:mechanicalComponentAny>]]);
recipes.addShaped(<engineersdecor:small_tree_cutter>,
 [[<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>],
 [<ore:plateSteel>, <advancedrocketry:sawbladeiron>, <minecraft:observer>],
 [<ore:mechanicalComponentAny>, <ore:dustRedstone>, <ore:mechanicalComponentAny>]]);
recipes.addShaped(<engineersdecor:small_milking_machine>,
 [[<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>],
 [<ore:plateSteel>, <immersiveengineering:metal_device1:6>, <minecraft:observer>],
 [<ore:mechanicalComponentAny>, <immersiveengineering:metal_device0:4>, <ore:mechanicalComponentAny>]]);
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

//Clay from stone dust
recipes.addShaped(<minecraft:clay_ball> * 8,
 [[<ore:dustStone>, <ore:dustStone>, <ore:dustStone>],
 [<ore:dustStone>, <liquid:water> * 1000, <ore:dustStone>],
 [<ore:dustStone>, <ore:dustStone>, <ore:dustStone>]]);

//Treated wood with plant oil
recipes.addShaped(<immersiveengineering:treated_wood> * 4,
 [[null, <ore:plankWood>, null],
 [<ore:plankWood>, <liquid:plantoil> * 1000, <ore:plankWood>],
 [null, <ore:plankWood>, null]]);
 
//Redstone wire can also be made with silver
recipes.addShaped(<immersiveengineering:wirecoil:5> * 4,
 [[null, <ore:wireSilver>, null],
 [<ore:dustRedstone>, <ore:stickWoodAny>, <ore:dustRedstone>],
 [null, <ore:wireSilver>, null]]);
recipes.addShaped(<immersiveengineering:wirecoil:5> * 4,
 [[null, <ore:dustRedstone>, null],
 [<ore:wireSilver>, <ore:stickWoodAny>, <ore:wireSilver>],
 [null, <ore:dustRedstone>, null]]);

//Make battery bank(s) out of higher tier capacitors
recipes.remove(<immersiveengineering:metal_device0:0>);
recipes.remove(<immersiveengineering:metal_device0:1>);
recipes.remove(<immersiveengineering:metal_device0:2>);
recipes.addShaped(<immersiveengineering:metal_device0:0>,
 [[<ore:ingotSteel>, <ore:ingotSteel>, <ore:ingotSteel>],
 [<ore:ingotCopper>, <libvulpes:battery:1>, <ore:ingotCopper>],
 [<ore:plankTreatedWood>, <libvulpes:battery:1>, <ore:plankTreatedWood>]]);
recipes.addShaped(<immersiveengineering:metal_device0:1>,
 [[<ore:ingotIron>, <ore:ingotIron>, <ore:ingotIron>],
 [<ore:ingotCopper>, <ore:blockLead>, <ore:ingotCopper>],
 [<ore:plankTreatedWood>, <ore:blockRedstone>, <ore:plankTreatedWood>]]);
recipes.addShaped(<immersiveengineering:metal_device0:2>,
 [[<ore:ingotIron>, <ore:ingotIron>, <ore:ingotIron>],
 [<ore:ingotAnnealedCopper>, <ore:blockLead>, <ore:ingotAnnealedCopper>],
 [<ore:plankTreatedWood>, <ore:blockRedstone>, <ore:plankTreatedWood>]]);
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

//Make bayonet use a Tetra iron sword
recipes.replaceAllOccurences(<minecraft:iron_sword>, <tetra:sword_modular>.withTag({"sword/basic_hilt_material": "basic_hilt/treated_wood", "sword/counterweight_material": "counterweight/iron", "sword/hilt": "sword/basic_hilt", "sword/blade": "sword/basic_blade", "sword/basic_blade_material": "basic_blade/iron", "sword/pommel": "sword/counterweight"}), <immersiveengineering:toolupgrade:4>);
 
//Redo railgun crafting to use supercapacitors and to be closer to 1.16 IE
recipes.remove(<immersiveengineering:railgun>);
recipes.addShaped(<immersiveengineering:railgun>,
 [[null, <immersiveengineering:metal_device0:1>, <immersiveengineering:material:13>],
 [<ore:ingotSteel>, <immersiveengineering:metal_decoration0:1>, <immersiveengineering:material:27>],
 [<immersiveengineering:metal_decoration0:1>, <ore:ingotSteel>, null]]);
recipes.replaceAllOccurences(<immersiveengineering:metal_device0:2>, <immersiveengineering:metal_device0:1>, <immersiveengineering:toolupgrade:9>);
 
//Add T3+ drill head(s)
recipes.addShaped(<immersiveengineering:drillhead>.withTag({headDamage: -14000}),
 [[<ore:dustDiamond>, <ore:dustDiamond>, null],
 [<ore:blockSteel>, <ore:blockSteel>, <ore:ingotSteel>],
 [<ore:dustDiamond>, <ore:dustDiamond>, null]]);
recipes.addShaped(<immersiveengineering:drillhead>.withTag({headDamage: -30000}),
 [[<ore:ingotMaragingSteel>, <ore:dustDiamond>, null],
 [<ore:blockMaragingSteel>, <ore:blockMolybdenum>, <ore:dustDiamond>],
 [<ore:ingotMaragingSteel>, <ore:dustDiamond>, null]]);
 
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

//Scaffolding recipes
recipes.addShaped(<immersiveengineering:metal_decoration1:1>,
 [[null, <ore:scaffoldingPanelSteel>, <ore:scaffoldingPanelSteel>],
 [<ore:scaffoldingPanelSteel>, null, <ore:scaffoldingPanelSteel>],
 [<ore:scaffoldingPanelSteel>, <ore:scaffoldingPanelSteel>, null]]);
recipes.addShaped(<immersiveengineering:metal_decoration1:5>,
 [[null, <ore:scaffoldingPanelAluminium>, <ore:scaffoldingPanelAluminium>],
 [<ore:scaffoldingPanelAluminium>, null, <ore:scaffoldingPanelAluminium>],
 [<ore:scaffoldingPanelAluminium>, <ore:scaffoldingPanelAluminium>, null]]);
recipes.addShaped(<contenttweaker:beryllium_frame>,
 [[null, <ore:scaffoldingPanelBeryllium>, <ore:scaffoldingPanelBeryllium>],
 [<ore:scaffoldingPanelBeryllium>, null, <ore:scaffoldingPanelBeryllium>],
 [<ore:scaffoldingPanelBeryllium>, <ore:scaffoldingPanelBeryllium>, null]]);
recipes.addShaped(<contenttweaker:maraging_steel_frame>,
 [[null, <ore:scaffoldingPanelMaragingSteel>, <ore:scaffoldingPanelMaragingSteel>],
 [<ore:scaffoldingPanelMaragingSteel>, null, <ore:scaffoldingPanelMaragingSteel>],
 [<ore:scaffoldingPanelMaragingSteel>, <ore:scaffoldingPanelMaragingSteel>, null]]);
recipes.addShaped(<contenttweaker:titanium_iridium_alloy_frame>,
 [[null, <ore:scaffoldingPanelTitaniumIridiumAlloy>, <ore:scaffoldingPanelTitaniumIridiumAlloy>],
 [<ore:scaffoldingPanelTitaniumIridiumAlloy>, null, <ore:scaffoldingPanelTitaniumIridiumAlloy>],
 [<ore:scaffoldingPanelTitaniumIridiumAlloy>, <ore:scaffoldingPanelTitaniumIridiumAlloy>, null]]);
 
//HVDC, HV, & MV changes
//Serving up some lovely consistency by renaming and retexturing and rereciping 95% of a mod, what fun!
//MV
recipes.replaceAllOccurences(<ore:wireElectrum>, <ore:wireAnnealedCopper>, <immersiveengineering:wirecoil:1>);
//HV
recipes.addShaped(<immersiveengineering:wirecoil:2> * 4,
 [[null, <ore:wireSteel>, null],
 [<ore:wireAnnealedCopper>, <ore:stickWoodAny>, <ore:wireAnnealedCopper>],
 [null, <ore:wireSteel>, null]]);
recipes.addShaped(<immersiveengineering:wirecoil:2> * 4,
 [[null, <ore:wireAnnealedCopper>, null],
 [<ore:wireSteel>, <ore:stickWoodAny>, <ore:wireSteel>],
 [null, <ore:wireAnnealedCopper>, null]]);
recipes.addShaped(<immersiveengineering:connector:4> * 4,
 [[null, <ore:ingotAnnealedCopper>, null],
 [<minecraft:hardened_clay>, <ore:ingotAnnealedCopper>, <minecraft:hardened_clay>],
 [<minecraft:hardened_clay>, <ore:ingotAnnealedCopper>, <minecraft:hardened_clay>]]);
recipes.addShaped(<immersiveengineering:connector:5> * 8,
 [[null, <ore:ingotAnnealedCopper>, null],
 [<immersiveengineering:stone_decoration:8>, <ore:ingotAnnealedCopper>, <immersiveengineering:stone_decoration:8>],
 [<immersiveengineering:stone_decoration:8>, <ore:ingotAnnealedCopper>, <immersiveengineering:stone_decoration:8>]]);
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

/*Recycling 
Recycling.makeStackInvalidRecyclingOutput(<immersiveengineering:metal:21> * 2);
Recycling.allowItemForRecycling(<immersiveengineering:metal_decoration1:*>);
Recycling.allowItemForRecycling(<immersiveengineering:metal_decoration2:*>);
Recycling.makeStackInvalidRecyclingOutput(<immersiveengineering:metal_decoration0:2>);
*/

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

//Remove Industrial Wire IC2 wires from JEI because we do not have IC2
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


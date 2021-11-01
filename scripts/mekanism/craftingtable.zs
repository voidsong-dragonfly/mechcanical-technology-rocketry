//Import
import crafttweaker.item.IItemStack;
import mods.jei.JEI.removeAndHide;
import mods.jei.JEI.hide;
import mods.jei.JEI.addItem;



//Make Steel Casing take HDPE Sheets
recipes.remove(<mekanism:basicblock:8>);
recipes.addShaped(<mekanism:basicblock:8>,
 [[<mekanism:polyethene:2>, null, <mekanism:polyethene:2>],
 [<mekanism:polyethene:2>, <ore:scaffoldingSteel>, <mekanism:polyethene:2>],
 [<mekanism:polyethene:2>, <ore:ingotPGMAny>, <mekanism:polyethene:2>]]);

//Make reinforced HDPE take magnesium, road take sand or slag
recipes.replaceAllOccurences(<ore:sand>, <ore:sand> | <ore:itemSlag>, <mekanism:roadplasticblock:*>);
recipes.addShaped(<mekanism:reinforcedplasticblock:15> * 4,
 [[<mekanism:polyethene:2>, <mekanism:polyethene:2>, <mekanism:polyethene:2>],
 [<mekanism:polyethene:2>, <ore:dustMagnesium>, <mekanism:polyethene:2>],
 [<mekanism:polyethene:2>, <mekanism:polyethene:2>, <mekanism:polyethene:2>]]);

//Mekanism transmitter recipes, make universal cables into superconductors
recipes.remove(<mekanism:transmitter>);
removeAndHide(<mekanism:transmitter>.withTag({tier: 0}));
removeAndHide(<mekanism:transmitter>.withTag({tier: 1}));
removeAndHide(<mekanism:transmitter>.withTag({tier: 2}));
removeAndHide(<mekanism:transmitter:1>.withTag({tier: 0}));
removeAndHide(<mekanism:transmitter:1>.withTag({tier: 1}));
removeAndHide(<mekanism:transmitter:1>.withTag({tier: 2}));
removeAndHide(<mekanism:transmitter:1>.withTag({tier: 3}));
removeAndHide(<mekanism:transmitter:2>.withTag({tier: 0}));
removeAndHide(<mekanism:transmitter:2>.withTag({tier: 1}));
removeAndHide(<mekanism:transmitter:2>.withTag({tier: 2}));
removeAndHide(<mekanism:transmitter:2>.withTag({tier: 3}));
removeAndHide(<mekanism:transmitter:3>.withTag({tier: 0}));
removeAndHide(<mekanism:transmitter:3>.withTag({tier: 1}));
removeAndHide(<mekanism:transmitter:3>.withTag({tier: 2}));
removeAndHide(<mekanism:transmitter:3>.withTag({tier: 3}));
removeAndHide(<mekanism:transmitter:4>);
removeAndHide(<mekanism:transmitter:5>);
removeAndHide(<mekanism:transmitter:6>.withTag({tier: 0}));
removeAndHide(<mekanism:transmitter:6>.withTag({tier: 1}));
removeAndHide(<mekanism:transmitter:6>.withTag({tier: 2}));
removeAndHide(<mekanism:transmitter:6>.withTag({tier: 3}));

//Mekanism side of circuit production
recipes.remove(<mekanism:controlcircuit:*>);

//Mekanism multiblock pieces
recipes.remove(<mekanism:basicblock:9>);
recipes.remove(<mekanism:basicblock:11>);
recipes.remove(<mekanism:basicblock2:0>);
recipes.remove(<mekanism:basicblock:15>);
recipes.remove(<mekanism:basicblock:14>);
recipes.remove(<mekanism:basicblock2:1>);
recipes.remove(<mekanism:basicblock2:2>);
recipes.addShaped(<mekanism:basicblock:9> * 4,
 [[<ore:sheetSteel>, <ore:sheetSteel>, <ore:sheetSteel>],
 [<ore:sheetSteel>, <contenttweaker:plastic_coated_rebar_concrete>, <ore:sheetSteel>],
 [<ore:sheetSteel>, <ore:sheetSteel>, <ore:sheetSteel>]]);
recipes.addShaped(<mekanism:basicblock:11>,
 [[<engineersdecor:straight_pipe_valve>, <mekanism:basicblock:9>, <engineersdecor:straight_pipe_valve>],
 [null, <ore:circuitBasic>, null]]);
recipes.addShaped(<mekanism:basicblock2:0> * 4,
 [[<ore:sheetCopper>, <ore:sheetCopper>, <ore:sheetCopper>],
 [<ore:sheetCopper>, <contenttweaker:plastic_coated_rebar_concrete>, <ore:sheetCopper>],
 [<ore:sheetCopper>, <ore:sheetCopper>, <ore:sheetCopper>]]);
recipes.addShaped(<mekanism:basicblock:15>,
 [[<engineersdecor:straight_pipe_valve>, <mekanism:basicblock2:0>, <engineersdecor:straight_pipe_valve>],
 [null, <ore:circuitAdvanced>, null]]);
recipes.addShaped(<mekanism:basicblock2:1> * 4,
 [[<ore:sheetAluminum>, <mekanism:polyethene:2>, <ore:sheetAluminum>],
 [<mekanism:polyethene:2>, <contenttweaker:plastic_coated_rebar_concrete>, <mekanism:polyethene:2>],
 [<ore:sheetAluminum>, <mekanism:polyethene:2>, <ore:sheetAluminum>]]);
recipes.addShaped(<mekanism:basicblock2:2>,
 [[<mekanism:transmitter>.withTag({tier: 3}), <mekanism:basicblock2:1>, <mekanism:transmitter>.withTag({tier: 3})],
 [null, <ore:circuitElite>, null]]);
 
//Mekanism blocks
//Removal
recipes.remove(<mekanism:machineblock:*>);
recipes.remove(<mekanism:machineblock2:*>);
recipes.remove(<mekanism:machineblock3:*>);
recipes.remove(<mekanism:basicblock2:9>);
recipes.remove(<mekanism:basicblock:14>);
recipes.remove(<mekanism:gastank>);
//Readdition
//Machine 1
recipes.addShaped(<mekanism:machineblock:2>,
 [[<ore:ingotSteel>, <ore:circuitElite>, <ore:ingotSteel>],
 [<ore:circuitBasic>, <mekanism:basicblock:8>, <ore:circuitBasic>],
 [<ore:ingotSteel>, <ore:mechanicalComponentSteel>, <ore:ingotSteel>]]);
recipes.addShaped(<mekanism:machineblock:13>,
 [[<ore:ingotSteel>, null, <ore:ingotSteel>],
 [<ore:circuitBasic>, <mekanism:basicblock:8>, <ore:circuitBasic>],
 [<ore:ingotSteel>, <ore:chestWood>, <ore:ingotSteel>]]);
recipes.addShaped(<mekanism:machineblock:14>,
 [[<ore:ingotSteel>, <mekanism:basicblock:8>, <ore:ingotSteel>],
 [<ore:ingotSteel>, <ore:coilCopper>, <ore:ingotSteel>]]);
recipes.addShaped(<mekanism:machineblock:15>,
 [[<ore:ingotSteel>, <mekanism:configurationcard>, <ore:ingotSteel>],
 [<ore:circuitBasic>, <mekanism:basicblock:8>, <ore:circuitBasic>],
 [<ore:ingotSteel>, <mekanism:configurationcard>, <ore:ingotSteel>]]);
//Machine 2
recipes.addShaped(<mekanism:machineblock2:3>,
 [[<ore:ingotSteel>, <ore:mechanicalComponentSteel>, <ore:ingotSteel>],
 [<ore:circuitBasic>, <mekanism:basicblock:8>, <ore:circuitBasic>],
 [<ore:ingotSteel>, <ore:mechanicalComponentSteel>, <ore:ingotSteel>]]);
recipes.addShaped(<mekanism:machineblock2:9>,
 [[<ore:ingotSteel>, <mekanism:basicblock:8>, <ore:ingotSteel>],
 [<ore:circuitBasic>, <mekanism:basicblock:8>, <ore:circuitBasic>],
 [<ore:ingotSteel>, <engineersdecor:thick_steel_pole>, <ore:ingotSteel>]]);
recipes.addShaped(<mekanism:machineblock2:10>,
 [[<ore:ingotSteel>, <immersiveengineering:toolupgrade:7>, <ore:ingotSteel>],
 [<ore:circuitBasic>, <mekanism:basicblock:8>, <ore:circuitBasic>],
 [<ore:ingotSteel>, <ore:mechanicalComponentSteel>, <ore:ingotSteel>]]);
recipes.addShaped(<mekanism:machineblock2:13>,
 [[<ore:ingotSteel>, <ore:itemLens>, <ore:ingotSteel>],
 [<ore:circuitBasic>, <mekanism:basicblock:8>, <ore:circuitBasic>],
 [<ore:ingotSteel>, <liquid:helium> * 1000, <ore:ingotSteel>]]);
recipes.addShaped(<mekanism:machineblock2:13>,
 [[<ore:ingotSteel>, <ore:itemLens>, <ore:ingotSteel>],
 [<ore:circuitBasic>, <mekanism:basicblock:8>, <ore:circuitBasic>],
 [<ore:ingotSteel>, <liquid:carbondioxide> * 1000, <ore:ingotSteel>]]);
recipes.addShaped(<mekanism:machineblock2:14>,
 [[<ore:ingotSteel>, <ore:itemLens>, <ore:ingotSteel>],
 [<ore:itemLens>, <mekanism:basicblock:8>, <ore:itemLens>],
 [<ore:ingotSteel>, <ore:itemLens>, <ore:ingotSteel>]]);
recipes.addShaped(<mekanism:machineblock2:15>,
 [[<ore:ingotSteel>, <ore:itemLens>, <ore:ingotSteel>],
 [<ore:itemLens>, <mekanism:basicblock:8>, <ore:itemLens>],
 [<ore:ingotSteel>, <portalgun:item_miniature_black_hole>, <ore:ingotSteel>]]);
//Machine 3
recipes.addShaped(<mekanism:machineblock3:3>,
 [[<ore:ingotSteel>, <ore:paneGlass>, <ore:ingotSteel>],
 [<ore:circuitBasic>, <mekanism:basicblock:8>, <ore:circuitBasic>],
 [<ore:ingotSteel>, <mekanism:dictionary>, <ore:ingotSteel>]]);
recipes.addShaped(<mekanism:machineblock3:4>,
 [[<ore:ingotSteel>, <ore:ingotAnnealedCopper>, <ore:ingotSteel>],
 [<ore:ingotAnnealedCopper>, <mekanism:basicblock:8>, <ore:ingotAnnealedCopper>],
 [<ore:ingotSteel>, <ore:coilCopper>, <ore:ingotSteel>]]);
recipes.addShaped(<mekanism:machineblock3:5>,
 [[<ore:ingotSteel>, <ore:paneGlass>, <ore:ingotSteel>],
 [<ore:circuitBasic>, <mekanism:basicblock:8>, <ore:circuitBasic>],
 [<ore:ingotSteel>, <ore:workbench>, <ore:ingotSteel>]]);
recipes.addShaped(<mekanism:machineblock3:6>,
 [[<ore:ingotSteel>, <ore:ingotAnnealedCopper>, <ore:ingotSteel>],
 [<ore:ingotAnnealedCopper>, <mekanism:basicblock:8>, <ore:ingotAnnealedCopper>],
 [<ore:ingotSteel>, <minecraft:furnace>, <ore:ingotSteel>]]);
//Gas tank
recipes.addShaped(<mekanism:gastank>,
 [[<ore:ingotSteel>, null, <ore:ingotSteel>],
 [<ore:ingotSteel>, <mekanism:basicblock:8>, <ore:ingotSteel>],
 [<ore:ingotSteel>, <ore:circuitBasic>, <ore:ingotSteel>]]);
//Basicblock
recipes.addShaped(<mekanism:basicblock2:9>,
 [[<ore:ingotSteel>, <ore:paneGlass>, <ore:ingotSteel>],
 [<ore:circuitBasic>, <mekanism:basicblock:8>, <ore:circuitBasic>],
 [<ore:ingotSteel>, <mekanism:configurationcard>, <ore:ingotSteel>]]);
recipes.addShaped(<mekanism:basicblock:14>,
 [[<ore:ingotSteel>, <ore:paneGlass>, <ore:ingotSteel>],
 [<ore:circuitAdvanced>, <mekanism:basicblock:8>, <ore:circuitAdvanced>],
 [<ore:ingotSteel>, <ore:ingotAnnealedCopper>, <ore:ingotSteel>]]);
 
//Removing enriched alloys and similar from items
//Because I don't know WHAT they were made of originally but it certainly wasn't "realism", I can tell you that much
//Upgrades
recipes.remove(<mekanism:speedupgrade>);
recipes.remove(<mekanism:energyupgrade>);
recipes.remove(<mekanism:mufflingupgrade>);
recipes.remove(<mekanism:anchorupgrade>);
recipes.addShaped(<mekanism:speedupgrade>,
 [[<ore:plateMolybdenum>, <ore:circuitElite>],
 [<ore:circuitAdvanced>, <ore:paneGlass>]]);
recipes.addShaped(<mekanism:energyupgrade>,
 [[<ore:plateMolybdenum>, <ore:circuitBasic>],
 [<ore:circuitAdvanced>, <ore:paneGlass>]]);
recipes.addShaped(<mekanism:mufflingupgrade>,
 [[<ore:plateMolybdenum>, <quark:quilted_wool:*>],
 [<ore:circuitAdvanced>, <ore:paneGlass>]]);
recipes.addShaped(<mekanism:anchorupgrade>,
 [[<ore:plateMolybdenum>, <minecraft:ender_eye>],
 [<ore:circuitAdvanced>, <ore:paneGlass>]]);
 
//Energy tablet
recipes.remove(<mekanism:energytablet:*>);
recipes.addShaped(<mekanism:energytablet>,
 [[<mekanism:polyethene:2>, <ore:itemBattery>, <mekanism:polyethene:2>],
 [<mekanism:polyethene:2>, <ore:circuitBasic>, <mekanism:polyethene:2>],
 [<mekanism:polyethene:2>, <ore:itemBattery>, <mekanism:polyethene:2>]]);
 
//Mekanism gear
recipes.replaceAllOccurences(<ore:alloyAdvanced>, <ore:plateSteel>, <mekanism:scubatank>);
recipes.replaceAllOccurences(<ore:alloyAdvanced>, <ore:mechanicalComponentSteel>, <mekanism:freerunners>);
recipes.remove(<mekanism:electricbow>);
recipes.addShaped(<mekanism:electricbow>,
 [[null, <ore:stickSteel>, <ore:mechanicalComponentSteel>],
 [<ore:plateSteel>, <mekanism:energytablet>, <ore:wireAluminum>],
 [null, <ore:stickSteel>, <ore:mechanicalComponentSteel>]]);
recipes.remove(<mekanism:seismicreader>);
recipes.addShaped(<mekanism:seismicreader>, 
 [[<ore:sheetSteel>, <ore:circuitBasic>, <ore:paneGlassColorless>],
 [<ore:sheetSteel>, <mekanism:energytablet>, <ore:sheetSteel>]]);
recipes.remove(<mekanism:configurator>);
recipes.addShaped(<mekanism:configurator>, 
 [[null, <ore:dyeBlue>, <ore:stickSteel>],
 [<mekanism:polyethene:2>, <mekanism:energytablet>, <ore:circuitBasic>],
 [<mekanism:polyethene:3>, <mekanism:polyethene:2>, null]]);
recipes.replaceAllOccurences(<ore:alloyAdvanced>, <mekanism:polyethene:2>, <mekanism:configurationcard>);
recipes.remove(<mekanism:atomicdisassembler:*>);
recipes.addShaped(<mekanism:atomicdisassembler>,
 [[<ore:ingotTitanium>, <ore:circuitAdvanced>, <ore:ingotTitanium>],
 [<ore:dustDiamond>, <mekanism:energytablet>, <ore:dustDiamond>],
 [null, <mekanism:polyethene:3>, null]]);
recipes.remove(<mekanism:jetpack>);
recipes.remove(<mekanism:armoredjetpack>);
recipes.addShaped(<mekanism:jetpack>,
 [[<ore:ingotBronze>, <ore:circuitBasic>, <ore:ingotBronze>],
 [<immersiveengineering:toolupgrade:7>, <mekanism:gastank>.withTag({tier: 0}), <immersiveengineering:toolupgrade:7>],
 [null, <immersiveengineering:toolupgrade:7>, null]]);
recipes.addShaped(<mekanism:armoredjetpack>,
 [[<mekanism:polyethene:2>, null, <mekanism:polyethene:2>],
 [<ore:ingotBronze>, <immersiveengineering:steel_armor_chest>, <ore:ingotBronze>],
 [<mekanism:polyethene:2>, <mekanism:jetpack>, <mekanism:polyethene:2>]]);
recipes.remove(<mekanism:scubatank>);
recipes.remove(<mekanism:gasmask>);
recipes.addShaped(<mekanism:gasmask>,
 [[<ore:ingotBronze>, <mekanism:polyethene:2>, <ore:ingotBronze>],
 [<mekanism:polyethene:2>, <ore:paneGlass>, <mekanism:polyethene:2>],
 [null, <ore:circuitBasic>, null]]);
recipes.addShaped(<mekanism:scubatank>,
 [[<mekanism:polyethene:2>, <ore:circuitBasic>, <mekanism:polyethene:2>],
 [<advancedrocketry:pressuretank:1>, <ore:ingotBronze>, <advancedrocketry:pressuretank:1>],
 [<ore:ingotBronze>, null, <ore:ingotBronze>]]);
 
//Robit
recipes.remove(<mekanism:robit>);
recipes.addShaped(<mekanism:robit>,
 [[null, <ore:ingotTungsten>, null],
 [<ore:ingotTungsten>, <mekanism:energytablet>, <ore:ingotTungsten>],
 [<ore:gearTitaniumAluminide>, <mekanism:machineblock:13>, <ore:gearTitaniumAluminide>]]);
 
//Induction Matrix
//Huge battery is huge. Makes so much heat it needs liquid nitrogen cycles to not turn into a rapidly expanding mass of gas and lithium cell fragments
recipes.remove(<mekanism:basicblock2:3>);
recipes.remove(<mekanism:basicblock2:4>);
recipes.addShaped(<mekanism:basicblock2:3>.withTag({tier: 0}),
 [[<ore:inductionTabletItem>, <ore:circuitBasic>, <ore:inductionTabletItem>],
 [<ore:inductionTabletItem>, <mekanism:basicblock:8>, <ore:inductionTabletItem>],
 [<ore:inductionTabletItem>, <ore:circuitBasic>, <ore:inductionTabletItem>]]);
recipes.addShaped(<mekanism:basicblock2:3>.withTag({tier: 1}),
 [[<ore:inductionTabletItem>, <ore:circuitAdvanced>, <ore:inductionTabletItem>],
 [<ore:inductionTabletItem>, <mekanism:basicblock2:3>.withTag({tier: 0}), <ore:inductionTabletItem>],
 [<ore:inductionTabletItem>, <ore:circuitAdvanced>, <ore:inductionTabletItem>]]);
recipes.addShaped(<mekanism:basicblock2:3>.withTag({tier: 2}),
 [[<ore:inductionTabletItem>, <ore:circuitElite>, <ore:inductionTabletItem>],
 [<ore:inductionTabletItem>, <mekanism:basicblock2:3>.withTag({tier: 1}), <ore:inductionTabletItem>],
 [<ore:inductionTabletItem>, <ore:circuitElite>, <ore:inductionTabletItem>]]);
recipes.addShaped(<mekanism:basicblock2:3>.withTag({tier: 3}),
 [[<ore:inductionTabletItem>, <ore:circuitUltimate>, <ore:inductionTabletItem>],
 [<ore:inductionTabletItem>, <mekanism:basicblock2:3>.withTag({tier: 2}), <ore:inductionTabletItem>],
 [<ore:inductionTabletItem>, <ore:circuitUltimate>, <ore:inductionTabletItem>]]);
recipes.addShaped(<mekanism:basicblock2:4>.withTag({tier: 0}),
 [[<ore:circuitBasic>, <liquid:liquid_nitrogen> * 1000, <ore:circuitBasic>],
 [<liquid:liquid_nitrogen> * 1000, <mekanism:basicblock:8>, <liquid:liquid_nitrogen> * 1000],
 [<ore:circuitBasic>, <liquid:liquid_nitrogen> * 1000, <ore:circuitBasic>]]);
recipes.addShaped(<mekanism:basicblock2:4>.withTag({tier: 1}),
 [[<ore:circuitAdvanced>, <liquid:liquid_nitrogen> * 1000, <ore:circuitAdvanced>],
 [<liquid:liquid_nitrogen> * 1000, <mekanism:basicblock2:4>.withTag({tier: 0}), <liquid:liquid_nitrogen> * 1000],
 [<ore:circuitAdvanced>, <liquid:liquid_nitrogen> * 1000, <ore:circuitAdvanced>]]);
recipes.addShaped(<mekanism:basicblock2:4>.withTag({tier: 2}),
 [[<ore:circuitElite>, <liquid:liquid_nitrogen> * 1000, <ore:circuitElite>],
 [<liquid:liquid_nitrogen> * 1000, <mekanism:basicblock2:4>.withTag({tier: 1}), <liquid:liquid_nitrogen> * 1000],
 [<ore:circuitElite>, <liquid:liquid_nitrogen> * 1000, <ore:circuitElite>]]);
recipes.addShaped(<mekanism:basicblock2:4>.withTag({tier: 3}),
 [[<ore:circuitUltimate>, <liquid:liquid_nitrogen> * 1000, <ore:circuitUltimate>],
 [<liquid:liquid_nitrogen> * 1000, <mekanism:basicblock2:4>.withTag({tier: 2}), <liquid:liquid_nitrogen> * 1000],
 [<ore:circuitUltimate>, <liquid:liquid_nitrogen> * 1000, <ore:circuitUltimate>]]);

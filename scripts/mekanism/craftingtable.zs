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

//Make Osmium only arc-furnace-able
furnace.remove(<ore:ingotOsmium>);

//Mekanism transmitter recipes, make universal cables into superconductors
removeAndHide(<mekanism:transmitter:*>);
//Universal cables (ultimate to superconductor)
addItem(<mekanism:transmitter:0>.withTag({tier: 3}));

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
 [<ore:sheetSteel>, <ore:machineCasingPlasticCoatedRebarConcrete>, <ore:sheetSteel>],
 [<ore:sheetSteel>, <ore:sheetSteel>, <ore:sheetSteel>]]);
recipes.addShaped(<mekanism:basicblock:11>,
 [[<engineersdecor:straight_pipe_valve>, <mekanism:basicblock:9>, <engineersdecor:straight_pipe_valve>],
 [null, <ore:circuitBasic>, null]]);
recipes.addShaped(<mekanism:basicblock2:0> * 4,
 [[<ore:sheetCopper>, <ore:sheetCopper>, <ore:sheetCopper>],
 [<ore:sheetCopper>, <ore:machineCasingPlasticCoatedRebarConcrete>, <ore:sheetCopper>],
 [<ore:sheetCopper>, <ore:sheetCopper>, <ore:sheetCopper>]]);
recipes.addShaped(<mekanism:basicblock:15>,
 [[<engineersdecor:straight_pipe_valve>, <mekanism:basicblock2:0>, <engineersdecor:straight_pipe_valve>],
 [null, <ore:circuitAdvanced>, null]]);
recipes.addShaped(<mekanism:basicblock:14>,
 [[<ore:circuitAdvanced>, <ore:paneGlass>, <ore:circuitAdvanced>],
 [<ore:ingotConstantan>, <mekanism:basicblock:8>, <ore:ingotConstantan>],
 [<ore:ingotConstantan>, <ore:ingotConstantan>, <ore:ingotConstantan>]]);
recipes.addShaped(<mekanism:basicblock2:1> * 4,
 [[<ore:sheetAluminum>, <mekanism:polyethene:2>, <ore:sheetAluminum>],
 [<mekanism:polyethene:2>, <ore:machineCasingPlasticCoatedRebarConcrete>, <mekanism:polyethene:2>],
 [<ore:sheetAluminum>, <mekanism:polyethene:2>, <ore:sheetAluminum>]]);
recipes.addShaped(<mekanism:basicblock2:2>,
 [[<immersiveengineering:wirecoil:2>, <mekanism:basicblock2:1>, <immersiveengineering:wirecoil:2>],
 [null, <ore:circuitElite>, null]]);
 
//Resistive Heater
recipes.remove(<mekanism:machineblock3:4>);
recipes.addShaped(<mekanism:machineblock3:4>,
 [[<ore:ingotTin>, <ore:ingotConstantan>, <ore:ingotTin>],
 [<ore:ingotConstantan>, <immersiveengineering:metal_device1:1>, <ore:ingotConstantan>],
 [<ore:ingotTin>, <immersiveengineering:metal_device0:2>, <ore:ingotTin>]]);

//Mekanism machine recipes
//T1 is Tungsten-Basic Circuit
//T2 is Constantan-Advanced Circuit
//T3 is Titanium Aluminide-Elite Circuit
//T4 is Titanium-Ultimate Circuit
//The colors match really well!
recipes.remove(<mekanism:machineblock:1>);
recipes.remove(<mekanism:machineblock:2>);
recipes.remove(<mekanism:machineblock:9>);
recipes.remove(<mekanism:machineblock2:0>);
recipes.remove(<mekanism:machineblock2:1>);
recipes.remove(<mekanism:machineblock2:3>);
recipes.remove(<mekanism:machineblock2:4>);
recipes.remove(<mekanism:machineblock2:6>);
recipes.remove(<mekanism:machineblock2:7>);
recipes.remove(<mekanism:machineblock2:8>);
recipes.remove(<mekanism:machineblock2:9>);
recipes.remove(<mekanism:machineblock2:13>);
recipes.remove(<mekanism:machineblock2:14>);
recipes.addShaped(<mekanism:machineblock:1>,
 [[<ore:ingotConstantan>, <ore:circuitAdvanced>, <ore:ingotConstantan>],
 [<mekanism:machineblock:13>, <mekanism:basicblock:8>, <mekanism:machineblock:13>],
 [<ore:ingotConstantan>, <ore:circuitAdvanced>, <ore:ingotConstantan>]]);
recipes.addShaped(<mekanism:machineblock:2>,
 [[<ore:ingotTitaniumAluminide>, <ore:circuitElite>, <ore:ingotTitaniumAluminide>],
 [<mekanism:machineblock:13>, <mekanism:basicblock:8>, <mekanism:machineblock:13>],
 [<ore:ingotTitaniumAluminide>, <ore:circuitElite>, <ore:ingotTitaniumAluminide>]]);
recipes.addShaped(<mekanism:machineblock2:0>,
 [[<ore:ingotTungsten>, <ore:circuitBasic>, <ore:ingotTungsten>],
 [<mekanism:gastank>, <mekanism:basicblock:8>, <immersivetech:metal_barrel:2>],
 [<ore:ingotTungsten>, <ore:circuitBasic>, <ore:ingotTungsten>]]);
recipes.addShaped(<mekanism:machineblock2:1>,
 [[<ore:ingotTitaniumAluminide>, <ore:circuitElite>, <ore:ingotTitaniumAluminide>],
 [<mekanism:machineblock:13>, <mekanism:basicblock:9>, <mekanism:gastank>],
 [<ore:ingotTitaniumAluminide>, <ore:circuitElite>, <ore:ingotTitaniumAluminide>]]);
recipes.addShaped(<mekanism:machineblock2:3>,
 [[<ore:ingotTitaniumAluminide>, <ore:circuitElite>, <ore:ingotTitaniumAluminide>],
 [<mekanism:gastank>, <mekanism:basicblock:9>, <mekanism:machineblock:13>],
 [<ore:ingotTitaniumAluminide>, <ore:circuitElite>, <ore:ingotTitaniumAluminide>]]);
recipes.addShaped(<mekanism:machineblock2:4>,
 [[<ore:ingotTungsten>, <ore:circuitBasic>, <ore:ingotTungsten>],
 [<immersiveengineering:graphite_electrode>, <mekanism:basicblock:8>, <immersiveengineering:graphite_electrode>],
 [<ore:ingotTungsten>, <ore:circuitBasic>, <ore:ingotTungsten>]]);
recipes.addShaped(<mekanism:machineblock2:6>,
 [[<ore:circuitUltimate>, <mekanism:gastank>, <ore:circuitUltimate>],
 [<ore:ingotTitanium>, <mekanism:basicblock:8>, <ore:ingotTitanium>],
 [<ore:circuitUltimate>, <mekanism:gastank>, <ore:circuitUltimate>]]);
recipes.addShaped(<mekanism:machineblock2:7>,
 [[<ore:circuitUltimate>, <immersivetech:metal_barrel:2>, <ore:circuitUltimate>],
 [<ore:ingotTitanium>, <mekanism:basicblock:8>, <ore:ingotTitanium>],
 [<ore:circuitUltimate>, <mekanism:gastank>, <ore:circuitUltimate>]]);
recipes.addShaped(<mekanism:machineblock2:8>,
 [[<ore:ingotTungsten>, <ore:circuitBasic>, <ore:ingotTungsten>],
 [<mekanism:gastank>, <mekanism:basicblock:8>, <mekanism:gastank>],
 [<ore:ingotTungsten>, <ore:circuitBasic>, <ore:ingotTungsten>]]);
recipes.addShaped(<mekanism:machineblock2:9>,
 [[<ore:ingotSteel>, <ore:paneGlassColorless>, <ore:ingotSteel>],
 [<ore:circuitBasic>, <mekanism:basicblock:8>, <ore:circuitBasic>],
 [<ore:ingotSteel>, <engineersdecor:thin_steel_pole>, <ore:ingotSteel>]]);
recipes.addShaped(<mekanism:machineblock2:13>,
 [[<ore:ingotTungsten>, <ore:circuitBasic>, <ore:ingotTungsten>],
 [<mekanism:energytablet>, <mekanism:basicblock:8>, <ore:lensRuby>],
 [<ore:ingotTungsten>, <ore:circuitBasic>, <ore:ingotTungsten>]]);
recipes.addShaped(<mekanism:machineblock2:14>,
 [[<ore:ingotTungsten>, <ore:lensGlass>, <ore:ingotTungsten>],
 [<ore:lensGlass>, <mekanism:basicblock:8>, <ore:lensGlass>],
 [<ore:ingotTungsten>, <ore:lensGlass>, <ore:ingotTungsten>]]);
recipes.replaceAllOccurences(<ore:alloyUltimate>, <ore:circuitUltimate>, <mekanism:machineblock3>);
 
//Gas Tanks
recipes.remove(<mekanism:gastank:*>);
recipes.addShaped(<mekanism:gastank>.withTag({tier: 0}),
 [[<ore:ingotPGMAny>, <ore:plateTungsten>, <ore:ingotPGMAny>],
 [<ore:plateTungsten>, null, <ore:plateTungsten>],
 [<ore:ingotPGMAny>, <ore:plateTungsten>, <ore:ingotPGMAny>]]);
recipes.addShaped(<mekanism:gastank>.withTag({tier: 1}),
 [[<ore:ingotPGMAny>, <ore:plateConstantan>, <ore:ingotPGMAny>],
 [<ore:plateConstantan>, null, <ore:plateConstantan>],
 [<ore:ingotPGMAny>, <ore:plateConstantan>, <ore:ingotPGMAny>]]);
recipes.addShaped(<mekanism:gastank>.withTag({tier: 2}),
 [[<ore:ingotPGMAny>, <ore:plateTitaniumAluminide>, <ore:ingotPGMAny>],
 [<ore:plateTitaniumAluminide>, null, <ore:plateTitaniumAluminide>],
 [<ore:ingotPGMAny>, <ore:plateTitaniumAluminide>, <ore:ingotPGMAny>]]);
recipes.addShaped(<mekanism:gastank>.withTag({tier: 3}),
 [[<ore:ingotPGMAny>, <ore:plateTitanium>, <ore:ingotPGMAny>],
 [<ore:plateTitanium>, null, <ore:plateTitanium>],
 [<ore:ingotPGMAny>, <ore:plateTitanium>, <ore:ingotPGMAny>]]);
 
//Bins
recipes.remove(<mekanism:basicblock:6>);
recipes.addShaped(<mekanism:basicblock:6>.withTag({tier: 0}),
 [[<minecraft:cobblestone>, <ore:circuitBasic>, <minecraft:cobblestone>],
 [<ore:ingotTungsten>, null, <ore:ingotTungsten>],
 [<minecraft:cobblestone>, <minecraft:cobblestone>, <minecraft:cobblestone>]]);
recipes.addShaped(<mekanism:basicblock:6>.withTag({tier: 1}),
 [[<minecraft:cobblestone>, <ore:circuitAdvanced>, <minecraft:cobblestone>],
 [<ore:ingotConstantan>, null, <ore:ingotConstantan>],
 [<minecraft:cobblestone>, <minecraft:cobblestone>, <minecraft:cobblestone>]]);
recipes.addShaped(<mekanism:basicblock:6>.withTag({tier: 2}),
 [[<minecraft:cobblestone>, <ore:circuitElite>, <minecraft:cobblestone>],
 [<ore:ingotTitaniumAluminide>, null, <ore:ingotTitaniumAluminide>],
 [<minecraft:cobblestone>, <minecraft:cobblestone>, <minecraft:cobblestone>]]);
recipes.addShaped(<mekanism:basicblock:6>.withTag({tier: 3}),
 [[<minecraft:cobblestone>, <ore:circuitUltimate>, <minecraft:cobblestone>],
 [<ore:ingotTitanium>, null, <ore:ingotTitanium>],
 [<minecraft:cobblestone>, <minecraft:cobblestone>, <minecraft:cobblestone>]]);
 
//Removing enriched alloys and similar from items
//Because I don't know WHAT they were made of originally but it certainly wasn't "realism", I can tell you that much
//Upgrades
recipes.remove(<mekanism:speedupgrade>);
recipes.remove(<mekanism:energyupgrade>);
recipes.remove(<mekanism:mufflingupgrade>);
recipes.remove(<mekanism:anchorupgrade>);
recipes.addShaped(<mekanism:speedupgrade>,
 [[null, <ore:ingotTungsten>, null],
 [<ore:blockGlassColorless>, <ore:circuitBasic>, <ore:blockGlassColorless>],
 [null, <ore:ingotTungsten>, null]]);
recipes.addShaped(<mekanism:energyupgrade>,
 [[null, <ore:ingotTungsten>, null],
 [<ore:blockGlassColorless>, <ore:circuitAdvanced>, <ore:blockGlassColorless>],
 [null, <ore:ingotTungsten>, null]]);
recipes.addShaped(<mekanism:mufflingupgrade>,
 [[null, <ore:ingotTungsten>, null],
 [<ore:blockGlassColorless>, <ore:wool>, <ore:blockGlassColorless>],
 [null, <ore:ingotTungsten>, null]]);
recipes.addShaped(<mekanism:anchorupgrade>,
 [[null, <ore:ingotTungsten>, null],
 [<ore:blockGlassColorless>, <ore:circuitElite>, <ore:blockGlassColorless>],
 [null, <ore:ingotTungsten>, null]]);
 
//Energy tablet
recipes.remove(<mekanism:energytablet:*>);
recipes.addShaped(<mekanism:energytablet>,
 [[<mekanism:polyethene:2>, <ore:itemBattery>, <mekanism:polyethene:2>],
 [<mekanism:polyethene:2>, <ore:circuitBasic>, <mekanism:polyethene:2>],
 [<mekanism:polyethene:2>, <ore:itemBattery>, <mekanism:polyethene:2>]]);

//Network reader
recipes.remove(<mekanism:networkreader>);
recipes.addShaped(<mekanism:networkreader>,
 [[<ore:ingotSteel>, <ore:blockGlassColorless>, <ore:ingotSteel>],
 [<ore:ingotSteel>, <mekanism:energytablet>, <ore:ingotSteel>],
 [<ore:ingotSteel>, <ore:circuitBasic>, <ore:ingotSteel>]]);
 
//Teleportation core
recipes.remove(<mekanism:teleportationcore>);
recipes.addShaped(<mekanism:teleportationcore>,
 [[<ore:dustRefinedObsidian>, <ore:ingotTitanium>, <ore:dustRefinedObsidian>],
 [<ore:circuitUltimate>, <ore:dustDiamond>, <ore:circuitUltimate>],
 [<ore:dustRefinedObsidian>, <ore:ingotTitanium>, <ore:dustRefinedObsidian>]]);
 
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
 [<advancedrocketry:pressuretank:1>, <ore:ingotSteel>, <advancedrocketry:pressuretank:1>],
 [<ore:ingotSteel>, null, <ore:ingotSteel>]]);
 
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
 [[<ore:circuitBasic>, <forge:bucketfilled>.withTag({FluidName: "liquidnitrogen", Amount: 1000}), <ore:circuitBasic>],
 [<forge:bucketfilled>.withTag({FluidName: "liquidnitrogen", Amount: 1000}), <mekanism:basicblock:8>, <forge:bucketfilled>.withTag({FluidName: "liquidnitrogen", Amount: 1000})],
 [<ore:circuitBasic>, <forge:bucketfilled>.withTag({FluidName: "liquidnitrogen", Amount: 1000}), <ore:circuitBasic>]]);
recipes.addShaped(<mekanism:basicblock2:4>.withTag({tier: 1}),
 [[<ore:circuitAdvanced>, <forge:bucketfilled>.withTag({FluidName: "liquidnitrogen", Amount: 1000}), <ore:circuitAdvanced>],
 [<forge:bucketfilled>.withTag({FluidName: "liquidnitrogen", Amount: 1000}), <mekanism:basicblock2:4>.withTag({tier: 0}), <forge:bucketfilled>.withTag({FluidName: "liquidnitrogen", Amount: 1000})],
 [<ore:circuitAdvanced>, <forge:bucketfilled>.withTag({FluidName: "liquidnitrogen", Amount: 1000}), <ore:circuitAdvanced>]]);
recipes.addShaped(<mekanism:basicblock2:4>.withTag({tier: 2}),
 [[<ore:circuitElite>, <forge:bucketfilled>.withTag({FluidName: "liquidnitrogen", Amount: 1000}), <ore:circuitElite>],
 [<forge:bucketfilled>.withTag({FluidName: "liquidnitrogen", Amount: 1000}), <mekanism:basicblock2:4>.withTag({tier: 1}), <forge:bucketfilled>.withTag({FluidName: "liquidnitrogen", Amount: 1000})],
 [<ore:circuitElite>, <forge:bucketfilled>.withTag({FluidName: "liquidnitrogen", Amount: 1000}), <ore:circuitElite>]]);
recipes.addShaped(<mekanism:basicblock2:4>.withTag({tier: 3}),
 [[<ore:circuitUltimate>, <forge:bucketfilled>.withTag({FluidName: "liquidnitrogen", Amount: 1000}), <ore:circuitUltimate>],
 [<forge:bucketfilled>.withTag({FluidName: "liquidnitrogen", Amount: 1000}), <mekanism:basicblock2:4>.withTag({tier: 2}), <forge:bucketfilled>.withTag({FluidName: "liquidnitrogen", Amount: 1000})],
 [<ore:circuitUltimate>, <forge:bucketfilled>.withTag({FluidName: "liquidnitrogen", Amount: 1000}), <ore:circuitUltimate>]]);

//Import
import mods.jei.JEI.removeAndHide;
import mods.jei.JEI.hide;
import mods.immersiveengineering.CokeOven;


 
//Turn AR concrete into Cement
recipes.remove(<advancedrocketry:concrete>);
recipes.addShaped(<advancedrocketry:concrete> * 8,
 [[<contenttweaker:fine_sand>, <earthworks:item_quicklime>, <contenttweaker:fine_sand>],
 [<ore:itemClay>, <liquid:water> * 1000, <ore:itemClay>],
 [<contenttweaker:fine_sand>, <earthworks:item_quicklime>, <contenttweaker:fine_sand>]]);

//Rocket pieces need more involved recipes than three ingots and three plates
recipes.remove(<advancedrocketry:rocketmotor>);
recipes.remove(<advancedrocketry:bipropellantrocketmotor>);
removeAndHide(<advancedrocketry:advrocketmotor>);
recipes.remove(<advancedrocketry:advbipropellantrocketmotor>);
recipes.remove(<advancedrocketry:nuclearrocketmotor>);
recipes.remove(<advancedrocketry:fueltank>);
recipes.remove(<advancedrocketry:bipropellantfueltank>);
recipes.remove(<advancedrocketry:oxidizerfueltank>);
recipes.remove(<advancedrocketry:nuclearfueltank>);
 
//Landing pad needs launchpad
recipes.replaceAllOccurences(<advancedrocketry:concrete>, <advancedrocketry:launchpad>, <advancedrocketry:landingpad>);
 
//Make suit workstation require HDPE
recipes.remove(<advancedrocketry:suitworkstation>);
recipes.addShaped(<advancedrocketry:suitworkstation>, 
 [[<mekanism:polyethene:3>, null, <mekanism:polyethene:3>],
 [<mekanism:polyethene:2>, <libvulpes:structuremachine>, <mekanism:polyethene:2>],
 [<mekanism:polyethene:3>, <engineersdecor:treated_wood_crafting_table>, <mekanism:polyethene:3>]]);
 
//Give the Pipe Seal a recipe that makes more sense
recipes.remove(<advancedrocketry:pipesealer>);
recipes.addShaped(<advancedrocketry:pipesealer> * 2,
 [[<mekanism:polyethene:3>, <ore:mechanicalComponentSteel>, <mekanism:polyethene:3>],
 [<ore:sheetAluminum>, <ore:sheetAluminum>, <ore:sheetAluminum>],
 [<ore:plateTin>, <ore:plateTin>, <ore:plateTin>]]);
recipes.addShaped(<advancedrocketry:pipesealer> * 2,
 [[<mekanism:polyethene:3>, <ore:mechanicalComponentSteel>, <mekanism:polyethene:3>],
 [<ore:sheetAluminum>, <ore:sheetAluminum>, <ore:sheetAluminum>],
 [<ore:plateAluminum>, <ore:plateAluminum>, <ore:plateAluminum>]]);

//Make assembling machines not tier up crafting and more complicated
recipes.remove(<advancedrocketry:deployablerocketbuilder>);
recipes.remove(<advancedrocketry:stationbuilder>);
recipes.remove(<advancedrocketry:rocketbuilder>);
recipes.addShaped(<advancedrocketry:deployablerocketbuilder>,
 [[<ore:sheetTitanium>, <advancedrocketry:structuretower>, <ore:sheetTitanium>],
 [<ore:circuitUltimate>, <libvulpes:structuremachine>, <ore:circuitUltimate>],
 [<ore:gearTitanium>, <advancedrocketry:structuretower>, <ore:gearTitanium>]]);
recipes.addShaped(<advancedrocketry:stationbuilder>,
 [[<ore:sheetTitanium>, <advancedrocketry:structuretower>, <ore:sheetTitanium>],
 [<ore:circuitElite>, <libvulpes:structuremachine>, <ore:circuitElite>],
 [<ore:gearTitanium>, <advancedrocketry:launchpad>, <ore:gearTitanium>]]);
recipes.addShaped(<advancedrocketry:rocketbuilder>,
 [[<ore:sheetTitanium>, <advancedrocketry:structuretower>, <ore:sheetTitanium>],
 [<ore:circuitAdvanced>, <libvulpes:structuremachine>, <ore:circuitAdvanced>],
 [<ore:gearTitanium>, <advancedrocketry:launchpad>, <ore:gearTitanium>]]);

//Wireless transciever to use basic circuits
recipes.remove(<advancedrocketry:wirelesstransciever>);
recipes.addShaped(<advancedrocketry:wirelesstransciever> * 4,
 [[<mekanism:polyethene:2>, <ore:sheetAluminum>, <mekanism:polyethene:2>],
 [<ore:circuitBasic>, <advancedrocketry:dataunit>, <ore:circuitBasic>],
 [<mekanism:polyethene:2>, <ore:sheetAluminum>, <mekanism:polyethene:2>]]);
 
//Put some computing power in the guidance computer
recipes.remove(<advancedrocketry:guidancecomputer>);
recipes.addShaped(<advancedrocketry:guidancecomputer>,
 [[<mekanism:polyethene:2>, <advancedrocketry:ic:1>, <mekanism:polyethene:2>],
 [<ore:circuitElite>, <libvulpes:structuremachine>, <ore:circuitElite>],
 [<mekanism:polyethene:2>, <ore:circuitElite>, <mekanism:polyethene:2>]]);

//Holo planet selector to use plastic and iron buttons
recipes.remove(<advancedrocketry:planetholoselector>);
recipes.addShaped(<advancedrocketry:planetholoselector>,
 [[<mekanism:polyethene:3>, <quark:iron_button>, <mekanism:polyethene:3>],
 [<quark:iron_button>, <ore:itemLens>, <quark:iron_button>],
 [<mekanism:polyethene:3>, <advancedrocketry:guidancecomputer>, <mekanism:polyethene:3>]]);
 
//Make satellite monitor and rocket monitor not take the (now significantly more expensive) optical sensors
recipes.remove(<advancedrocketry:monitoringstation>);
recipes.remove(<advancedrocketry:satellitecontrolcenter>);
recipes.addShaped(<advancedrocketry:monitoringstation>,
 [[<ore:stickCopper>, <advancedrocketry:misc>, <ore:stickCopper>],
 [<ore:stickCopper>, <libvulpes:structuremachine>, <ore:stickCopper>],
 [<ore:stickCopper>, <libvulpes:battery>, <ore:stickCopper>]]);
recipes.addShaped(<advancedrocketry:satellitecontrolcenter>,
 [[<ore:stickCopper>, <advancedrocketry:misc>, <ore:stickCopper>],
 [<ore:stickCopper>, <libvulpes:structuremachine>, <ore:stickCopper>],
 [<advancedrocketry:dataunit>, <libvulpes:battery>, <advancedrocketry:ic:1>]]);

//Satellite assembler to use tools
recipes.remove(<advancedrocketry:satellitebuilder>);
recipes.addShaped(<advancedrocketry:satellitebuilder>,
 [[<mekanism:polyethene:2>, <ore:circuitAdvanced>, <mekanism:polyethene:2>],
 [<immersiveengineering:tool>, <libvulpes:structuremachine>, <immersiveengineering:tool:1>],
 [<ore:blockMotor>, <minecraft:anvil>, <advancedrocketry:sawblade>]]);
 
//Warp controller needs ultimate circuits
recipes.remove(<advancedrocketry:warpmonitor>);
recipes.addShaped(<advancedrocketry:warpmonitor>,
 [[<ore:circuitUltimate>, <advancedrocketry:misc>, <ore:circuitUltimate>],
 [<advancedrocketry:dataunit>, <libvulpes:structuremachine>, <advancedrocketry:dataunit>],
 [<ore:circuitUltimate>, <advancedrocketry:dataunit>, <ore:circuitUltimate>]]);
 
//Atmosphere detector/etc uses correct basic circuit
recipes.replaceAllOccurences(<advancedrocketry:ic:0>, <ore:circuitBasic>, <advancedrocketry:oxygendetection>);
recipes.remove(<advancedrocketry:loader:6>);
recipes.addShaped(<advancedrocketry:loader:6>,
 [[null, <ore:circuitBasic>, null],
 [<ore:stickCopper>, <libvulpes:structuremachine>, <ore:stickCopper>],
 [null, <ore:circuitBasic>, null]]);

//Redo oxygen system parts to use fewer iron bars
recipes.remove(<advancedrocketry:oxygenscrubber>);
recipes.remove(<advancedrocketry:oxygenvent>);
recipes.remove(<advancedrocketry:oxygencharger>);
recipes.addShaped(<advancedrocketry:oxygenscrubber>,
 [[<mekanism:polyethene:2>, <ore:barsIron>, <mekanism:polyethene:2>],
 [<ore:circuitAdvanced>, <libvulpes:structuremachine>, <ore:circuitAdvanced>],
 [<mekanism:polyethene:2>, <ore:ingotCarbon>, <mekanism:polyethene:2>]]);
recipes.addShaped(<advancedrocketry:oxygenvent>,
 [[<mekanism:polyethene:2>, <ore:barsIron>, <mekanism:polyethene:2>],
 [<libvulpes:battery>, <libvulpes:structuremachine>, <ore:circuitAdvanced>],
 [<mekanism:polyethene:2>, <ore:fanSteel>, <mekanism:polyethene:2>]]);
recipes.addShaped(<advancedrocketry:oxygencharger>,
 [[<mekanism:polyethene:2>, <immersiveengineering:metal_decoration1_slab:5>, <mekanism:polyethene:2>],
 [<mekanism:polyethene:2>, <immersiveengineering:metal_device0:5>, <mekanism:polyethene:2>]]);

//Fuel loader doesn't use _three_ machine structures
recipes.remove(<advancedrocketry:fuelingstation>);
recipes.addShaped(<advancedrocketry:fuelingstation>,
 [[<mekanism:polyethene:2>, <advancedrocketry:misc>, <mekanism:polyethene:2>],
 [<libvulpes:battery>, <libvulpes:structuremachine>, <ore:circuitAdvanced>],
 [<mekanism:polyethene:2>, <immersiveengineering:metal_device0:5>, <mekanism:polyethene:2>]]);
 
//Station controllers have a little more sensical recipes
recipes.remove(<advancedrocketry:gravitycontroller>);
recipes.remove(<advancedrocketry:altitudecontroller>);
recipes.remove(<advancedrocketry:orientationcontroller>);
recipes.addShaped(<advancedrocketry:gravitycontroller>,
 [[<libvulpes:structuremachine>, <advancedrocketry:misc>],
 [<ore:circuitAdvanced>, <ore:reactionWheelItem>]]);
recipes.addShaped(<advancedrocketry:altitudecontroller>,
 [[<libvulpes:structuremachine>, <advancedrocketry:misc>],
 [<ore:reactionWheelItem>, <ore:circuitAdvanced>]]);
recipes.addShaped(<advancedrocketry:orientationcontroller>,
 [[<libvulpes:structuremachine>, <ore:circuitAdvanced>],
 [<advancedrocketry:misc>, <ore:reactionWheelItem>]]);

//Force field slight recipe tweak
recipes.remove(<advancedrocketry:forcefieldprojector>);
recipes.addShaped(<advancedrocketry:forcefieldprojector>,
 [[null, <ore:gemDilithium>, null],
 [<immersiveengineering:metal_decoration0>, <libvulpes:structuremachine>, <immersiveengineering:metal_decoration0>],
 [<mekanism:polyethene:2>, <ore:gemDilithium>, <mekanism:polyethene:2>]]);

//Laser recipe tweak
//Force field slight recipe tweak
recipes.remove(<advancedrocketry:vacuumlaser>);
recipes.addShaped(<advancedrocketry:vacuumlaser>,
 [[<mekanism:polyethene:2>, <ore:itemLens>, <mekanism:polyethene:2>],
 [<ore:circuitBasic>, <libvulpes:structuremachine>, <ore:circuitBasic>],
 [<mekanism:polyethene:2>, <liquid:helium> * 1000, <mekanism:polyethene:2>]]);
recipes.addShaped(<advancedrocketry:vacuumlaser>,
 [[<mekanism:polyethene:2>, <ore:itemLens>, <mekanism:polyethene:2>],
 [<ore:circuitBasic>, <libvulpes:structuremachine>, <ore:circuitBasic>],
 [<mekanism:polyethene:2>, <liquid:carbondioxide> * 1000, <mekanism:polyethene:2>]]);
 
//Make Warp Core recipe slightly more involved
recipes.remove(<advancedrocketry:warpcore>);
recipes.addShaped(<advancedrocketry:warpcore>,
 [[<ore:ingotTitaniumIridium>, <ore:circuitUltimate>, <ore:ingotTitaniumIridium>],
 [<ore:circuitUltimate>, <ore:frameTitaniumIridiumAlloy>, <ore:circuitUltimate>],
 [<ore:ingotTitaniumIridium>, <ore:circuitUltimate>, <ore:ingotTitaniumIridium>]]);

//Make Launchpad require steel
recipes.remove(<advancedrocketry:launchpad>);
recipes.addShaped(<advancedrocketry:launchpad> * 2,
 [[null, null, null],
 [<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>],
 [<engineersdecor:rebar_concrete>, <immersiveengineering:metal_device1:6>, <engineersdecor:rebar_concrete>]]);

//Iridium Crubible & asteroid mining
recipes.remove(<advancedrocketry:iquartzcrucible>);
recipes.remove(<advancedrocketry:drill>); 

//Centrifuge Cylinder Shell
recipes.addShaped(<ore:machineCasingCentrifugeCylinderShell>.firstItem,
 [[<ore:plateTitaniumAluminide>, <ore:scaffoldingPanelAluminiumMagnesiumTitanide>, <ore:plateTitaniumAluminide>],
 [<ore:plateTitaniumAluminide>, null, <ore:plateTitaniumAluminide>],
 [<ore:plateTitaniumAluminide>, <ore:scaffoldingPanelAluminiumMagnesiumTitanide>, <ore:plateTitaniumAluminide>]]);
recipes.addShaped(<ore:machineCasingCentrifugeCylinderShell>.firstItem,
 [[<ore:plateMaragingSteel>, <ore:scaffoldingPanelMaragingSteel>, <ore:plateMaragingSteel>],
 [<ore:plateMaragingSteel>, null, <ore:plateMaragingSteel>],
 [<ore:plateMaragingSteel>, <ore:scaffoldingPanelMaragingSteel>, <ore:plateMaragingSteel>]]);

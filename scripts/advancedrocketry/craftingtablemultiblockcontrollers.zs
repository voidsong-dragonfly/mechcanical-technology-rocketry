//Import
import mods.jei.JEI.removeAndHide;
import mods.jei.JEI.hide;



//Cutting machine
recipes.remove(<advancedrocketry:cuttingmachine>);
recipes.addShaped(<advancedrocketry:cuttingmachine>,
 [[<mekanism:polyethene:2>, <advancedrocketry:misc>, <mekanism:polyethene:2>],
 [<advancedrocketry:ic:4>, <ore:scaffoldingAluminum>, <advancedrocketry:ic:3>],
 [<ore:circuitBasic>, null, <ore:circuitBasic>]]);

//Precision assembler
recipes.remove(<advancedrocketry:precisionassemblingmachine>);
recipes.addShaped(<advancedrocketry:precisionassemblingmachine>,
 [[<mekanism:polyethene:2>, <advancedrocketry:misc>, <mekanism:polyethene:2>],
 [<advancedrocketry:ic:5>, <ore:scaffoldingAluminum>, <advancedrocketry:ic:3>],
 [<ore:circuitBasic>, <advancedrocketry:ic:4>, <ore:circuitBasic>]]);

//Precision laser etcher
recipes.remove(<advancedrocketry:precisionlaseretcher>);
recipes.addShaped(<advancedrocketry:precisionlaseretcher>,
 [[<mekanism:polyethene:2>, <advancedrocketry:misc>, <mekanism:polyethene:2>],
 [<advancedrocketry:ic:4>, <ore:scaffoldingAluminum>, <advancedrocketry:ic:4>],
 [<ore:circuitBasic>, <advancedrocketry:ic:3>, <ore:circuitBasic>]]);

//Rolling machine
recipes.remove(<advancedrocketry:rollingmachine>);
recipes.addShaped(<advancedrocketry:rollingmachine>,
 [[<mekanism:polyethene:2>, <advancedrocketry:misc>, <mekanism:polyethene:2>],
 [<advancedrocketry:ic:3>, <ore:scaffoldingAluminum>, <advancedrocketry:ic:4>],
 [<ore:circuitBasic>, <advancedrocketry:ic:5>, <ore:circuitBasic>]]);
 
//Lathe
recipes.remove(<advancedrocketry:lathe>);
recipes.addShaped(<advancedrocketry:lathe>,
 [[<mekanism:polyethene:2>, <advancedrocketry:misc>, <mekanism:polyethene:2>],
 [<advancedrocketry:ic:3>, <ore:scaffoldingAluminum>, <advancedrocketry:ic:4>],
 [<ore:circuitBasic>, null, <ore:circuitBasic>]]);
 
//Chemical reactor
recipes.remove(<advancedrocketry:chemicalreactor>);
recipes.addShaped(<advancedrocketry:chemicalreactor>,
 [[<mekanism:polyethene:2>, <advancedrocketry:misc>, <mekanism:polyethene:2>],
 [<advancedrocketry:ic:4>, <ore:scaffoldingAluminum>, <advancedrocketry:ic:3>],
 [<ore:circuitBasic>, <advancedrocketry:ic:5>, <ore:circuitBasic>]]);
recipes.addShaped(<advancedrocketry:chemicalreactor>,
 [[<ore:sheetAluminum>, <advancedrocketry:misc>, <ore:sheetAluminum>],
 [<advancedrocketry:ic:4>, <ore:scaffoldingAluminum>, <advancedrocketry:ic:3>],
 [<ore:circuitBasic>, <advancedrocketry:ic:5>, <ore:circuitBasic>]]);
 
//Observatory
recipes.remove(<advancedrocketry:observatory>);
recipes.addShaped(<advancedrocketry:observatory>,
 [[<mekanism:polyethene:2>, <advancedrocketry:misc>, <mekanism:polyethene:2>],
 [<advancedrocketry:ic:4>, <ore:scaffoldingAluminum>, <advancedrocketry:ic:3>],
 [<ore:circuitBasic>, <ore:circuitElite>, <ore:circuitBasic>]]);
 
//Beacon
recipes.remove(<advancedrocketry:beacon>);
recipes.addShaped(<advancedrocketry:beacon>,
 [[<mekanism:polyethene:2>, <advancedrocketry:misc>, <mekanism:polyethene:2>],
 [<advancedrocketry:ic:1>, <ore:scaffoldingAluminum>, <advancedrocketry:ic:1>],
 [<ore:circuitBasic>, <advancedrocketry:planetidchip>, <ore:circuitBasic>]]);
 
//Astrobody Data Processor
recipes.remove(<advancedrocketry:planetanalyser>);
recipes.addShaped(<advancedrocketry:planetanalyser>,
 [[<mekanism:polyethene:2>, <advancedrocketry:misc>, <mekanism:polyethene:2>],
 [<advancedrocketry:ic:4>, <ore:scaffoldingAluminum>, <advancedrocketry:ic:3>],
 [<ore:circuitElite>, <ore:circuitElite>, <ore:circuitElite>]]);
 
//Centrifuge
recipes.remove(<advancedrocketry:centrifuge>);
recipes.addShaped(<advancedrocketry:centrifuge>,
 [[<mekanism:polyethene:2>, <advancedrocketry:misc>, <mekanism:polyethene:2>],
 [<advancedrocketry:ic:4>, <ore:scaffoldingAluminum>, <advancedrocketry:ic:3>],
 [<ore:circuitElite>, <advancedrocketry:ic:5>, <ore:circuitElite>]]);
 
//Microwave Reciever
recipes.remove(<advancedrocketry:microwavereciever>);
recipes.addShaped(<advancedrocketry:microwavereciever>,
 [[<mekanism:polyethene:2>, <advancedrocketry:misc>, <mekanism:polyethene:2>],
 [<advancedrocketry:ic:4>, <ore:scaffoldingAluminum>, <advancedrocketry:ic:4>],
 [<ore:circuitElite>, <advancedrocketry:ic:1>, <ore:circuitElite>]]);
 
//Railgun
recipes.remove(<advancedrocketry:railgun>);
recipes.addShaped(<advancedrocketry:railgun>,
 [[<mekanism:polyethene:2>, <advancedrocketry:misc>, <mekanism:polyethene:2>],
 [<advancedrocketry:ic:4>, <ore:scaffoldingAluminum>, <advancedrocketry:ic:3>],
 [<ore:circuitElite>, <advancedrocketry:ic:1>, <ore:circuitElite>]]);
 
//Biome Scanner
recipes.remove(<advancedrocketry:biomescanner>);
recipes.addShaped(<advancedrocketry:biomescanner>,
 [[<mekanism:polyethene:2>, <advancedrocketry:misc>, <mekanism:polyethene:2>],
 [<advancedrocketry:planetidchip>, <ore:scaffoldingAluminum>, <advancedrocketry:spacestationchip>],
 [<ore:circuitBasic>, <advancedrocketry:ic:1>, <ore:circuitBasic>]]);
 
//Orbital Laser Drill
recipes.remove(<advancedrocketry:spacelaser>);
recipes.addShaped(<advancedrocketry:spacelaser>,
 [[<mekanism:polyethene:2>, <advancedrocketry:misc>, <mekanism:polyethene:2>],
 [<advancedrocketry:ic:4>, <ore:scaffoldingAluminum>, <advancedrocketry:ic:3>],
 [<ore:circuitUltimate>, <advancedrocketry:ic:1>, <ore:circuitUltimate>]]);
 
//Crystalliser
recipes.remove(<advancedrocketry:crystallizer>);
recipes.addShaped(<advancedrocketry:crystallizer>,
 [[<mekanism:polyethene:2>, <advancedrocketry:misc>, <mekanism:polyethene:2>],
 [<advancedrocketry:ic:3>, <ore:scaffoldingAluminum>, <advancedrocketry:ic:4>],
 [<ore:circuitElite>, <advancedrocketry:ic:5>, <ore:circuitElite>]]);
 
//Space Elevator
recipes.remove(<advancedrocketry:spaceelevatorcontroller>);
recipes.addShaped(<advancedrocketry:spaceelevatorcontroller>,
 [[<mekanism:polyethene:2>, <advancedrocketry:misc>, <mekanism:polyethene:2>],
 [<advancedrocketry:ic:1>, <ore:scaffoldingAluminum>, <advancedrocketry:ic:4>],
 [<ore:circuitUltimate>, <advancedrocketry:elevatorchip>, <ore:circuitUltimate>]]);
 
//Black Hole Generator
recipes.remove(<advancedrocketry:blackholegenerator>);
recipes.addShaped(<advancedrocketry:blackholegenerator>,
 [[<mekanism:polyethene:2>, <advancedrocketry:misc>, <mekanism:polyethene:2>],
 [<advancedrocketry:ic:1>, <ore:scaffoldingAluminum>, <advancedrocketry:ic:1>],
 [<ore:circuitUltimate>, <advancedrocketry:spacestationchip>, <ore:circuitUltimate>]]);

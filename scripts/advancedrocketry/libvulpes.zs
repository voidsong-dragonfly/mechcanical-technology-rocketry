//Hatch recipes
recipes.remove(<libvulpes:hatch:*>);
recipes.remove(<libvulpes:forgepowerinput>);
recipes.remove(<libvulpes:forgepoweroutput>);
recipes.remove(<advancedrocketry:loader:0>);
recipes.addShaped(<libvulpes:hatch:0>,
 [[<ore:sheetAluminum>, null, <ore:sheetAluminum>],
 [<ore:sheetAluminum>, <ore:scaffoldingAluminum>, <ore:sheetAluminum>],
 [<ore:sheetAluminum>, <engineersdecor:factory_hopper>, <ore:sheetAluminum>]]);
recipes.addShaped(<libvulpes:hatch:1>,
 [[<ore:sheetAluminum>, <engineersdecor:factory_hopper>, <ore:sheetAluminum>],
 [<ore:sheetAluminum>, <ore:scaffoldingAluminum>, <ore:sheetAluminum>],
 [<ore:sheetAluminum>, null, <ore:sheetAluminum>]]);
recipes.addShaped(<libvulpes:hatch:2>,
 [[<ore:sheetAluminum>, null, <ore:sheetAluminum>],
 [<ore:sheetAluminum>, <ore:scaffoldingAluminum>, <ore:sheetAluminum>],
 [<ore:sheetAluminum>, <immersiveengineering:metal_device1:6>, <ore:sheetAluminum>]]);
recipes.addShaped(<libvulpes:hatch:3>,
 [[<ore:sheetAluminum>, <immersiveengineering:metal_device1:6>, <ore:sheetAluminum>],
 [<ore:sheetAluminum>, <ore:scaffoldingAluminum>, <ore:sheetAluminum>],
 [<ore:sheetAluminum>, null, <ore:sheetAluminum>]]);
recipes.addShaped(<libvulpes:forgepowerinput>,
 [[<ore:sheetAluminum>, null, <ore:sheetAluminum>],
 [<ore:sheetAluminum>, <ore:scaffoldingAluminum>, <ore:sheetAluminum>],
 [<ore:sheetAluminum>, <libvulpes:battery:1>, <ore:sheetAluminum>]]);
recipes.addShaped(<libvulpes:forgepoweroutput>,
 [[<ore:sheetAluminum>, <libvulpes:battery:1>, <ore:sheetAluminum>],
 [<ore:sheetAluminum>, <ore:scaffoldingAluminum>, <ore:sheetAluminum>],
 [<ore:sheetAluminum>, null, <ore:sheetAluminum>]]);
recipes.addShaped(<advancedrocketry:loader:0>,
 [[<ore:sheetAluminum>, <advancedrocketry:dataunit>, <ore:sheetAluminum>],
 [<ore:sheetAluminum>, <ore:scaffoldingAluminum>, <ore:sheetAluminum>],
 [<ore:sheetAluminum>, <ore:circuitBasic>, <ore:sheetAluminum>]]);
 
//Make LibVulpes motors require gears
recipes.remove(<libvulpes:motor>);
recipes.remove(<libvulpes:advancedmotor>);
recipes.remove(<libvulpes:enhancedmotor>);
recipes.remove(<libvulpes:elitemotor>);
recipes.addShaped(<libvulpes:motor>, 
 [[null, <ore:plateSteel>, <ore:plateSteel>],
 [<ore:stickSteel>, <ore:coilCopper>, <ore:gearSteel>],
 [null, <ore:plateSteel>, <ore:plateSteel>]]);
recipes.addShaped(<libvulpes:advancedmotor>, 
 [[null, <ore:plateSteel>, <ore:plateSteel>],
 [<ore:stickSteel>, <ore:coilElectrum>, <ore:gearSteel>],
 [null, <ore:plateSteel>, <ore:plateSteel>]]);
recipes.addShaped(<libvulpes:enhancedmotor>, 
 [[null, <ore:plateTitanium>, <ore:plateTitanium>],
 [<ore:stickTitanium>, <ore:coilHighVoltage>, <ore:gearTitanium>],
 [null, <ore:plateTitanium>, <ore:plateTitanium>]]);
recipes.addShaped(<libvulpes:elitemotor>, 
 [[null, <ore:plateIridium>, <ore:plateIridium>],
 [<ore:stickIridium>, <contenttweaker:superconductive_coil>, <ore:gearTitaniumIridium>],
 [null, <ore:plateIridium>, <ore:plateIridium>]]);
 
//Battery recipe removal
recipes.remove(<libvulpes:battery>);

//Harder, more involved machine structure recipes
recipes.remove(<libvulpes:structuremachine>);
recipes.remove(<libvulpes:advstructuremachine>);
recipes.addShaped(<libvulpes:structuremachine>,
 [[<mekanism:polyethene:2>, <ore:circuitAdvanced>, <mekanism:polyethene:2>],
 [<mekanism:polyethene:2>, <ore:scaffoldingAluminum>, <mekanism:polyethene:2>],
 [<mekanism:polyethene:2>, <ore:circuitAdvanced>, <mekanism:polyethene:2>]]);
recipes.addShaped(<libvulpes:structuremachine>,
 [[<mekanism:polyethene:2>, null, <mekanism:polyethene:2>],
 [<mekanism:polyethene:2>, <ore:scaffoldingAluminum>, <mekanism:polyethene:2>],
 [<mekanism:polyethene:2>, <ore:circuitElite>, <mekanism:polyethene:2>]]);
recipes.addShaped(<libvulpes:advstructuremachine>,
 [[<ore:sheetTitaniumAluminide>, null, <ore:sheetTitaniumAluminide>],
 [<ore:sheetTitaniumAluminide>, <ore:scaffoldingAluminum>, <ore:sheetTitaniumAluminide>],
 [<ore:sheetTitaniumAluminide>, <ore:circuitElite>, <ore:sheetTitaniumAluminide>]]);
 
//Make holoprojector not take (expensive) optical sensors
recipes.remove(<libvulpes:holoprojector>);
recipes.addShaped(<libvulpes:holoprojector>,
 [[<ore:plateIron>, <ore:paneGlass>, <ore:plateIron>, ],
 [<ore:plateIron>, <immersiveengineering:metal_device1:9>, <ore:plateIron>]]);

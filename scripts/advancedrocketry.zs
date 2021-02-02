//Import
import mods.jei.JEI.removeAndHide;
import mods.jei.JEI.hide;
import mods.immersiveengineering.CokeOven;
import mods.immersiveengineering.Blueprint;

//Hide some useless LibVulpes and Advanced Rocketry blocks
removeAndHide(<libvulpes:blockphantom>);
removeAndHide(<libvulpes:placeholder>);
removeAndHide(<advancedrocketry:unlittorch>);
removeAndHide(<advancedrocketry:astrobed>);
removeAndHide(<advancedrocketry:lightsource>);
removeAndHide(<advancedrocketry:airlock_door>);

//Remove AR block tanks because IE barrels fill this with a more balanced fluid storage amount
removeAndHide(<advancedrocketry:liquidtank>);

//Remove LibVulpes coal generators because this doesn't work IRL
removeAndHide(<libvulpes:coalgenerator>);

//Add full data chip to GPS unit craft
recipes.addShapeless(<contenttweaker:gps_unit>, [<advancedrocketry:dataunit>.withTag({maxData: 1000, DataType: 1, Data: 1000, locked: 0 as byte}), <ore:stickAluminum>]);

//Make LibVulpes motors require gears
recipes.remove(<libvulpes:motor>);
recipes.remove(<libvulpes:advancedmotor>);
recipes.remove(<libvulpes:enhancedmotor>);
recipes.remove(<libvulpes:elitemotor>);
recipes.addShaped(<libvulpes:motor>, 
 [[null, <ore:plateSteel>, <ore:plateSteel>],
 [<ore:stickSteel>, <ore:gearSteel>, <ore:coilCopper>],
 [null, <ore:plateSteel>, <ore:plateSteel>]]);
recipes.addShaped(<libvulpes:advancedmotor>, 
 [[null, <ore:plateSteel>, <ore:plateSteel>],
 [<ore:stickSteel>, <ore:gearSteel>, <ore:coilGold>],
 [null, <ore:plateSteel>, <ore:plateSteel>]]);
recipes.addShaped(<libvulpes:enhancedmotor>, 
 [[null, <ore:plateTitanium>, <ore:plateTitanium>],
 [<ore:stickTitanium>, <ore:gearTitanium>, <ore:coilAluminum>],
 [null, <ore:plateTitanium>, <ore:plateTitanium>]]);
recipes.addShaped(<libvulpes:elitemotor>, 
 [[null, <ore:plateIridium>, <ore:plateIridium>],
 [<ore:stickIridium>, <ore:gearTitaniumIridium>, <ore:coilTitanium>],
 [null, <ore:plateIridium>, <ore:plateIridium>]]);
 
//Turn AR concrete into Cement
recipes.remove(<advancedrocketry:concrete>);
recipes.addShaped(<advancedrocketry:concrete> * 8,
 [[<ore:dustStone>, <earthworks:item_chalk>, <ore:dustStone>],
 [<ore:sand>, <minecraft:water_bucket>, <ore:sand>],
 [<ore:dustStone>, <earthworks:item_chalk>, <ore:dustStone>]]);

//Remove Advanced Rocketry circuits for Mekanism ones, which have a new crafting setup
removeAndHide(<advancedrocketry:ic:0>);
removeAndHide(<advancedrocketry:ic:2>);
removeAndHide(<advancedrocketry:ic:3>);
removeAndHide(<advancedrocketry:ic:4>);
removeAndHide(<advancedrocketry:ic:5>);
removeAndHide(<advancedrocketry:wafer>);
removeAndHide(<advancedrocketry:itemcircuitplate:*>);

//Black Hole Generator needs high-tier motors
recipes.remove(<advancedrocketry:blackholegenerator>);
recipes.addShaped(<advancedrocketry:blackholegenerator>, 
 [[<ore:sheetTitaniumAluminide>, <advancedrocketry:structuretower>, <ore:sheetTitaniumAluminide>],
 [<ore:sheetTitaniumAluminide>, <libvulpes:advstructuremachine>, <ore:sheetTitaniumAluminide>],
 [<libvulpes:enhancedmotor>, <advancedrocketry:structuretower>, <libvulpes:enhancedmotor>]]);

//Make Jackhammer not require a diamond, as it does not even show up in the texture and makes little sense
recipes.remove(<advancedrocketry:jackhammer>);
recipes.addShaped(<advancedrocketry:jackhammer>,
 [[null, <ore:plateAluminum>, <ore:stickTungsten>],
 [<ore:stickSteel>, <ore:mechanicalComponentSteel>, <ore:plateAluminum>],
 [<ore:ingotTitanium>, <ore:stickSteel>, null]]);

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
 
//Give turn the drill into a spectrometry array and solar collector
recipes.remove(<advancedrocketry:drill>);

//Rocket monitoring station needs a circuit
recipes.remove(<advancedrocketry:monitoringstation>);
recipes.addShaped(<advancedrocketry:monitoringstation>,
 [[<ore:stickCopper>, <advancedrocketry:satelliteprimaryfunction:0>, <ore:stickCopper>],
 [<ore:stickCopper>, <libvulpes:structuremachine>, <ore:stickCopper>],
 [<ore:stickCopper>, <ore:circuitBasic>, <ore:stickCopper>]]);

//Guidance computer access hatch needs correct circuits
recipes.remove(<advancedrocketry:loader:6>);
recipes.addShaped(<advancedrocketry:loader:6>,
 [[<mekanism:polyethene:3>, <ore:circuitBasic>, <mekanism:polyethene:3>],
 [<ore:stickCopper>, <libvulpes:structuremachine>, <ore:stickCopper>],
 [<mekanism:polyethene:3>, <ore:circuitBasic>, <mekanism:polyethene:3>]]);

//Satellite bay needs Ti3Al
recipes.remove(<advancedrocketry:loader:1>);
recipes.addShaped(<advancedrocketry:loader:1>,
 [[<ore:stickAluminum>, <ore:sheetTitaniumAluminide>, <ore:stickAluminum>],
 [<ore:sheetTitaniumAluminide>, <libvulpes:structuremachine>, <ore:sheetTitaniumAluminide>],
 [<ore:stickAluminum>, <ore:sheetTitaniumAluminide>, <ore:stickAluminum>]]); 

//Rocket pieces need more involved recipes than three ingots and three plates
recipes.remove(<advancedrocketry:rocketmotor>);
recipes.remove(<advancedrocketry:bipropellantrocketmotor>);
removeAndHide(<advancedrocketry:advrocketmotor>);
recipes.remove(<advancedrocketry:advbipropellantrocketmotor>);
recipes.remove(<advancedrocketry:fueltank>);
recipes.remove(<advancedrocketry:bipropellantfueltank>);
recipes.remove(<advancedrocketry:oxidizerfueltank>);
 
//Fueling station needs a pump
recipes.remove(<advancedrocketry:fuelingstation>);
recipes.addShaped(<advancedrocketry:fuelingstation>,
 [[<ore:plateTin>, <immersiveengineering:metal_device0:5>, <ore:plateTin>],
 [<ore:circuitBasic>, <libvulpes:structuremachine>, <ore:circuitBasic>],
 [<ore:plateTin>, <immersivetech:metal_barrel:2>, <ore:plateTin>]]);

//Landing pad needs launchpad
recipes.replaceAllOccurences(<advancedrocketry:concrete>, <advancedrocketry:launchpad>, <advancedrocketry:landingpad>);
 
//Make satellite terminal require HDPE
recipes.remove(<advancedrocketry:satellitecontrolcenter>);
recipes.addShaped(<advancedrocketry:satellitecontrolcenter>,
 [[<mekanism:polyethene:2>, <advancedrocketry:satelliteprimaryfunction:3>, <mekanism:polyethene:2>],
 [<ore:stickCopper>, <libvulpes:structuremachine>, <ore:stickCopper>],
 [<mekanism:polyethene:2>, <mekanism:polyethene:2>, <mekanism:polyethene:2>]]);
 
//Station maneuvering blocks need nozzles and reaction wheels
recipes.remove(<advancedrocketry:gravitycontroller>);
recipes.remove(<advancedrocketry:altitudecontroller>);
recipes.remove(<advancedrocketry:orientationcontroller>);
recipes.addShaped(<advancedrocketry:altitudecontroller>,
 [[<contenttweaker:reaction_wheel>, <libvulpes:structuremachine>, <contenttweaker:reaction_wheel>],
 [<immersiveengineering:toolupgrade:7>, <immersiveengineering:toolupgrade:7>, <immersiveengineering:toolupgrade:7>]]);
recipes.addShaped(<advancedrocketry:gravitycontroller>,
 [[<immersiveengineering:toolupgrade:7>, <libvulpes:structuremachine>, <immersiveengineering:toolupgrade:7>],
 [null, <contenttweaker:reaction_wheel>, null]]);
recipes.addShaped(<advancedrocketry:orientationcontroller>,
 [[<contenttweaker:reaction_wheel>, <libvulpes:structuremachine>, <contenttweaker:reaction_wheel>],
 [null, <immersiveengineering:toolupgrade:7>, null]]);
 
//Observatory needs HDPE
recipes.remove(<advancedrocketry:observatory>);
recipes.addShaped(<advancedrocketry:observatory>,
 [[<mekanism:polyethene:2>, <ore:paneGlassColorless>, <mekanism:polyethene:2>],
 [<ore:circuitAdvanced>, <libvulpes:structuremachine>, <ore:circuitAdvanced>],
 [<mekanism:polyethene:3>, <mekanism:polyethene:3>, <mekanism:polyethene:3>]]);

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
 
//Oxygen system to require HDPE not iron bars and be somewhat simpler
recipes.remove(<advancedrocketry:oxygenscrubber>);
recipes.remove(<advancedrocketry:oxygenvent>);
recipes.remove(<advancedrocketry:carbonscrubbercartridge>);
recipes.remove(<advancedrocketry:oxygencharger>);
recipes.remove(<advancedrocketry:oxygendetection>);
recipes.addShaped(<advancedrocketry:oxygenscrubber>,
 [[<mekanism:polyethene:2>, <ore:fanSteel>, <mekanism:polyethene:2>],
 [<mekanism:polyethene:2>, <libvulpes:structuremachine>, <mekanism:polyethene:2>],
 [<mekanism:polyethene:2>, <ore:ingotCarbon>, <mekanism:polyethene:2>]]);
recipes.addShaped(<advancedrocketry:oxygenvent>,
 [[<mekanism:polyethene:2>, <ore:fanSteel>, <mekanism:polyethene:2>],
 [<mekanism:polyethene:2>, <libvulpes:structuremachine>, <mekanism:polyethene:2>],
 [<mekanism:polyethene:2>, <immersivetech:metal_barrel:2>, <mekanism:polyethene:2>]]);
recipes.addShaped(<advancedrocketry:carbonscrubbercartridge>,
 [[<ore:sheetSteel>, <quark:grate>, <ore:sheetSteel>],
 [<ore:sheetSteel>, null, <ore:sheetSteel>],
 [<ore:sheetSteel>, <mekanism:polyethene:2>, <ore:sheetSteel>]]);
recipes.addShaped(<advancedrocketry:oxygencharger>,
 [[<mekanism:polyethene:2>, <minecraft:heavy_weighted_pressure_plate>, <mekanism:polyethene:2>],
 [<ore:fanSteel>, <libvulpes:structuremachine>, <ore:fanSteel>]]);
recipes.addShaped(<advancedrocketry:oxygendetection>,
 [[<mekanism:polyethene:2>, <quark:grate>, <mekanism:polyethene:2>],
 [<ore:circuitBasic>, <libvulpes:structuremachine>, <ore:circuitBasic>],
 [<mekanism:polyethene:2>, <ore:fanSteel>, <mekanism:polyethene:2>]]);

//Satellite builder recipe to require HDPE and be cleaner
recipes.remove(<advancedrocketry:satellitebuilder>);
recipes.addShaped(<advancedrocketry:satellitebuilder>,
 [[<mekanism:polyethene:3>, <advancedrocketry:sawbladeiron>, <mekanism:polyethene:3>],
 [<ore:circuitAdvanced>, <libvulpes:structuremachine>, <ore:circuitAdvanced>],
 [<mekanism:polyethene:3>, <minecraft:anvil>, <mekanism:polyethene:3>]]);
 
//Make Biome Scanner have circuitry
recipes.replaceAllOccurences(<libvulpes:battery>, <ore:circuitElite>, <advancedrocketry:biomescanner>);

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

//Make Gas Intake require grates instead of hoppers
recipes.remove(<advancedrocketry:intake>);
recipes.addShaped(<advancedrocketry:intake>,
 [[<ore:stickMaragingSteel>, <quark:grate>, <ore:stickMaragingSteel>],
 [<quark:grate>, <libvulpes:structuremachine>, <quark:grate>],
 [<ore:stickMaragingSteel>, <quark:grate>, <ore:stickMaragingSteel>]]);

//Wireless transciever to use basic circuits
recipes.remove(<advancedrocketry:wirelesstransciever>);
recipes.addShaped(<advancedrocketry:wirelesstransciever> * 2,
 [[<mekanism:polyethene:2>, <ore:sheetAluminum>, <mekanism:polyethene:2>],
 [<ore:circuitBasic>, <advancedrocketry:dataunit>, <ore:circuitBasic>],
 [<mekanism:polyethene:2>, <ore:sheetAluminum>, <mekanism:polyethene:2>]]);
 
 
//Give docking ports a more involved recipe
recipes.remove(<advancedrocketry:stationmarker>);
recipes.addShaped(<advancedrocketry:stationmarker>, 
 [[<mekanism:polyethene:2>, <ore:plateTin>, <mekanism:polyethene:2>],
 [<ore:circuitBasic>, <libvulpes:structuremachine>, <ore:circuitBasic>],
 [<mekanism:polyethene:2>, <advancedrocketry:ic:1>, <mekanism:polyethene:2>]]);

//Railgun requires steel sheets and a HV coil block
recipes.remove(<advancedrocketry:railgun>);
recipes.addShaped(<advancedrocketry:railgun>,
 [[<ore:sheetSteel>, <advancedrocketry:ic:1>, <ore:sheetSteel>],
 [<ore:circuitBasic>, <libvulpes:structuremachine>, <ore:circuitBasic>],
 [<ore:sheetSteel>, <immersiveengineering:metal_decoration0:2>, <ore:sheetSteel>]]);

//Add HV coil block to the space elevator as well
recipes.remove(<advancedrocketry:spaceelevatorcontroller>);
recipes.addShaped(<advancedrocketry:spaceelevatorcontroller>,
 [[<ore:sheetAluminum>, <ore:sheetAluminum>, <ore:sheetAluminum>],
 [<ore:circuitElite>, <libvulpes:structuremachine>, <ore:circuitElite>],
 [<ore:sheetAluminum>, <immersiveengineering:metal_decoration0:2>, <ore:sheetAluminum>]]);

//Force Field Projector to use an IE coil block
recipes.remove(<advancedrocketry:forcefieldprojector>);
recipes.addShaped(<advancedrocketry:forcefieldprojector>,
 [[<ore:sheetAluminum>, <ore:gemDilithium>, <ore:sheetAluminum>],
 [<ore:sheetAluminum>, <libvulpes:structuremachine>, <ore:sheetAluminum>],
 [<ore:sheetAluminum>, <immersiveengineering:metal_decoration0:0>, <ore:sheetAluminum>]]);

//Beacon to use IE coil as well
recipes.remove(<advancedrocketry:beacon>);
recipes.addShaped(<advancedrocketry:beacon>,
 [[<ore:sheetSteel>, <advancedrocketry:ic:1>, <ore:sheetSteel>],
 [<ore:circuitBasic>, <libvulpes:structuremachine>, <ore:circuitBasic>],
 [<ore:sheetSteel>, <immersiveengineering:metal_decoration0:0>, <ore:sheetSteel>]]);
 
//Put some computing power in the guidance computer
recipes.remove(<advancedrocketry:guidancecomputer>);
recipes.addShaped(<advancedrocketry:guidancecomputer>,
 [[<mekanism:polyethene:2>, <advancedrocketry:ic:1>, <mekanism:polyethene:2>],
 [<ore:circuitElite>, <libvulpes:structuremachine>, <ore:circuitElite>],
 [<mekanism:polyethene:2>, <ore:circuitElite>, <mekanism:polyethene:2>]]);

//Put some computing power in the ABDP
recipes.remove(<advancedrocketry:planetanalyser>);
recipes.addShaped(<advancedrocketry:planetanalyser>,
 [[<advancedrocketry:ic:1>, <advancedrocketry:planetidchip>, <advancedrocketry:ic:1>],
 [<ore:circuitElite>, <libvulpes:structuremachine>, <ore:circuitElite>],
 [<mekanism:polyethene:2>, <ore:circuitElite>, <mekanism:polyethene:2>]]);
 
//Holo planet selector to use plastic and iron buttons
recipes.remove(<advancedrocketry:planetholoselector>);
recipes.addShaped(<advancedrocketry:planetholoselector>,
 [[<mekanism:polyethene:3>, <quark:iron_button>, <mekanism:polyethene:3>],
 [<quark:iron_button>, <ore:lensGlass>, <quark:iron_button>],
 [<mekanism:polyethene:3>, <advancedrocketry:guidancecomputer>, <mekanism:polyethene:3>]]);

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
 
//Satellite recipe removals
recipes.remove(<advancedrocketry:satellite>);
recipes.remove(<advancedrocketry:satelliteprimaryfunction:*>);
 
//Chip conversion recipes
recipes.remove(<advancedrocketry:satelliteidchip>);
recipes.remove(<advancedrocketry:asteroidchip>);
recipes.remove(<advancedrocketry:spacestationchip>);
recipes.remove(<advancedrocketry:planetidchip>);
recipes.addShapeless(<advancedrocketry:ic:1>, [<ore:circuitAdvanced>]);
recipes.addShaped(<advancedrocketry:satelliteidchip>,
 [[<mekanism:configurator:*>, <contenttweaker:tin_solder>, null],
 [null, <advancedrocketry:ic:1>, null],
 [null, null, null]]);
recipes.addShaped(<advancedrocketry:asteroidchip>,
 [[<mekanism:configurator:*>, null, <contenttweaker:tin_solder>],
 [null, <advancedrocketry:ic:1>, null],
 [null, null, null]]);
recipes.addShaped(<advancedrocketry:elevatorchip>,
 [[<mekanism:configurator:*>, null, null],
 [null, <advancedrocketry:ic:1>, <contenttweaker:tin_solder>],
 [null, null, null]]);
recipes.addShaped(<advancedrocketry:spacestationchip>,
 [[<mekanism:configurator:*>, null, null],
 [null, <advancedrocketry:ic:1>, null],
 [null, null, <contenttweaker:tin_solder>]]);
recipes.addShaped(<advancedrocketry:planetidchip>,
 [[<mekanism:configurator:*>, null, null],
 [null, <advancedrocketry:ic:1>, null],
 [null, <contenttweaker:tin_solder>, null]]);

//Suit recipes
recipes.remove(<advancedrocketry:spacehelmet>);
recipes.remove(<advancedrocketry:spacechestplate>);
recipes.remove(<advancedrocketry:spaceleggings>);
recipes.remove(<advancedrocketry:spaceboots>);
 
//Suit upgrade recipes
recipes.addShapeless(<advancedrocketry:beaconfinder>, [<advancedrocketry:itemupgrade:4>, <advancedrocketry:ic:1>]);
recipes.addShaped(<advancedrocketry:itemupgrade:4>,
 [[<ore:circuitElite>, <ore:itemBattery>, <ore:circuitElite>],
 [<ore:lensGlass>, <ore:stickSteel>, <ore:lensGlass>]]);
recipes.addShapeless(<advancedrocketry:itemupgrade:0>, [<advancedrocketry:itemupgrade:1>, <ore:circuitElite>]);
recipes.addShaped(<advancedrocketry:itemupgrade:1>, 
 [[<ore:circuitElite>, <ore:plateTitanium>],
 [<immersiveengineering:toolupgrade:7>, <ore:circuitElite>]]);
recipes.addShaped(<advancedrocketry:itemupgrade:2>,
 [[<ore:blockMotor>, <ore:stickSteel>],
 [<ore:circuitAdvanced>, <ore:stickSteel>]]);
recipes.addShaped(<advancedrocketry:itemupgrade:3>,
 [[<ore:stickSteel>, <ore:circuitElite>, <ore:stickSteel>],
 [<ore:plateSteel>, <minecraft:leather_boots>, <ore:plateSteel>]]);
recipes.addShaped(<advancedrocketry:atmanalyser>, 
 [[<quark:grate>, <ore:lensGlass>, <ore:itemBattery>],
 [<ore:plateTin>, <ore:circuitElite>, <ore:plateTin>]]);

//Ore Scanner recipe
recipes.remove(<advancedrocketry:sealdetector>);
recipes.addShaped(<advancedrocketry:sealdetector>,
 [[<ore:circuitAdvanced>, <ore:paneGlassColorless>, <ore:fanSteel>],
 [<ore:plateTin>, <libvulpes:battery:1>, <ore:plateTin>]]);

//Seal Detector recipe
recipes.remove(<advancedrocketry:orescanner>);
recipes.addShaped(<advancedrocketry:orescanner>,
 [[<ore:circuitAdvanced>, <ore:paneGlassColorless>, <advancedrocketry:ic:1>],
 [<ore:plateTin>, <libvulpes:battery:1>, <ore:plateTin>]]);

//Battery recipe removal
recipes.remove(<libvulpes:battery>);

//Make Orbital Laser Drill recipe more involved and include laser
recipes.remove(<advancedrocketry:spacelaser>);
recipes.addShaped(<advancedrocketry:spacelaser>,
 [[<ore:ingotIridium>, <mekanism:machineblock2:13>, <ore:ingotIridium>],
 [<ore:circuitUltimate>, <ore:lensRuby>, <ore:circuitUltimate>],
 [<ore:gearTitaniumIridium>, <libvulpes:advstructuremachine>, <ore:gearTitaniumIridium>]]);
 
//Make Jetpack recipe more realistic
recipes.remove(<advancedrocketry:jetpack>);
recipes.addShaped(<advancedrocketry:jetpack>,
 [[<minecraft:lever>, <immersiveengineering:wirecoil:4>, <minecraft:lever>],
 [<advancedrocketry:pressuretank:1>, <ore:plateSteel>, <advancedrocketry:pressuretank:1>],
 [<immersiveengineering:toolupgrade:7>, null, <immersiveengineering:toolupgrade:7>]]);
  
//Make Warp Core recipe slightly more involved
recipes.remove(<advancedrocketry:warpcore>);
recipes.addShaped(<advancedrocketry:warpcore>,
 [[<ore:ingotRefinedObsidian>, <ore:circuitUltimate>, <ore:ingotRefinedObsidian>],
 [<ore:circuitUltimate>, <contenttweaker:warp_ring_engineering_block>, <ore:circuitUltimate>],
 [<ore:ingotRefinedObsidian>, <ore:circuitUltimate>, <ore:ingotRefinedObsidian>]]);

//Make Warp Controller recipe have more computing power
recipes.remove(<advancedrocketry:warpmonitor>);
recipes.addShaped(<advancedrocketry:warpmonitor>,
 [[<ore:plateMaragingSteel>, <ore:paneGlass>, <ore:plateMaragingSteel>],
 [<ore:sheetMaragingSteel>, <libvulpes:advstructuremachine>, <ore:sheetMaragingSteel>],
 [<ore:plateMaragingSteel>, <ore:circuitUltimate>, <ore:plateMaragingSteel>]]);

//Add Warp Engineering Block recipes
recipes.addShaped(<contenttweaker:warp_ring_engineering_block> * 2,
 [[<ore:ingotIridium>, <ore:circuitUltimate>, <ore:ingotIridium>],
 [<ore:mechanicalComponentMaragingSteel>, <immersiveengineering:metal_decoration0:2>, <ore:mechanicalComponentMaragingSteel>],
 [<ore:ingotIridium>, <ore:circuitUltimate>, <ore:ingotIridium>]]);
recipes.addShaped(<contenttweaker:warp_core_engineering_block>,
 [[<ore:platePlatinum>, <ore:blockOsmium>, <ore:platePlatinum>],
 [<ore:circuitUltimate>, <ore:blockUranium>, <ore:circuitUltimate>],
 [<ore:platePlatinum>, <ore:blockOsmium>, <ore:platePlatinum>]]);

//Make microwave reciever have a more sensical recipe
recipes.remove(<advancedrocketry:microwavereciever>);
recipes.addShaped(<advancedrocketry:microwavereciever>,
 [[<immersive_energy:material:1>, <immersive_energy:material:1>, <immersive_energy:material:1>],
 [<advancedrocketry:ic:1>, <libvulpes:structuremachine>, <advancedrocketry:ic:1>],
 [<ore:circuitElite>, <advancedrocketry:satelliteprimaryfunction>, <ore:circuitElite>]]);

//Convert from dust blocks to dusts
//Nonmetals
//recipes.addShapeless(<contenttweaker:silicon_dioxide_dust_block>, [<> * 8]);
recipes.addShapeless(<contenttweaker:charcoal_dust> * 8, [<contenttweaker:charcoal_dust_block>]);
recipes.addShapeless(<immersiveengineering:material:18> * 8, [<contenttweaker:hop_graphite_dust_block>]);
recipes.addShapeless(<immersiveengineering:material:25> * 8, [<contenttweaker:sulfur_dust_block>]);
recipes.addShapeless(<mekanism:otherdust:4> * 8, [<contenttweaker:lithium_dust_block>]);
//Metals
recipes.addShapeless(<contenttweaker:magnesium_dust> * 8, [<contenttweaker:magnesium_dust_block>]);
recipes.addShapeless(<immersiveengineering:metal:18> * 8, [<contenttweaker:iron_dust_block>]);
recipes.addShapeless(<immersiveengineering:metal:13> * 8, [<contenttweaker:nickel_dust_block>]);
recipes.addShapeless(<contenttweaker:cobalt_dust> * 8, [<contenttweaker:cobalt_dust_block>]);
recipes.addShapeless(<immersiveengineering:metal:9> * 8, [<contenttweaker:copper_dust_block>]);
recipes.addShapeless(<immersiveengineering:metal:10> * 8, [<contenttweaker:aluminium_dust_block>]);
recipes.addShapeless(<immersiveengineering:metal:19> * 8, [<contenttweaker:gold_dust_block>]);
recipes.addShapeless(<immersiveengineering:metal:12> * 8, [<contenttweaker:silver_dust_block>]);
recipes.addShapeless(<contenttweaker:platinum_dust> * 8, [<contenttweaker:platinum_dust_block>]);
recipes.addShapeless(<libvulpes:productdust:10> * 8, [<contenttweaker:iridium_dust_block>]);
recipes.addShapeless(<mekanism:dust:2> * 8, [<contenttweaker:osmium_dust_block>]);
recipes.addShapeless(<immersive_energy:metal:3> * 8, [<contenttweaker:tungsten_dust_block>]);
recipes.addShapeless(<libvulpes:productdust:5> * 8, [<contenttweaker:tin_dust_block>]);
recipes.addShapeless(<libvulpes:productdust:7> * 8, [<contenttweaker:titanium_dust_block>]);
recipes.addShapeless(<contenttweaker:niobium_dust> * 8, [<contenttweaker:niobium_dust_block>]);
 
//Remove unused Advanced Rocketry multiblocks and multiblock pieces
removeAndHide(<advancedrocketry:blockpump>);
removeAndHide(<advancedrocketry:centrifuge>);
removeAndHide(<advancedrocketry:electrolyser>);
removeAndHide(<advancedrocketry:terraformer>);
removeAndHide(<advancedrocketry:chemicalreactor>);
removeAndHide(<advancedrocketry:platepress>);
removeAndHide(<advancedrocketry:rollingmachine>);
removeAndHide(<advancedrocketry:lathe>);
removeAndHide(<advancedrocketry:cuttingmachine>);
removeAndHide(<advancedrocketry:crystallizer>);
removeAndHide(<advancedrocketry:precisionassemblingmachine>);
removeAndHide(<advancedrocketry:sawblade>);
removeAndHide(<advancedrocketry:arcfurnace>);
removeAndHide(<advancedrocketry:blastbrick>);

//Remove some unused Advanced Rocketry items
removeAndHide(<advancedrocketry:misc:0>);
removeAndHide(<advancedrocketry:lens>);

//Make Saw Blade recipe require diamonds and steel
recipes.remove(<advancedrocketry:sawbladeiron>);
recipes.addShaped(<advancedrocketry:sawbladeiron>,
 [[null, <ore:dustDiamond>, null],
 [<ore:dustDiamond>, <ore:gearSteel>, <ore:dustDiamond>],
 [null, <ore:dustDiamond>, null]]);

//Make Launchpad require steel
recipes.remove(<advancedrocketry:launchpad>);
recipes.addShaped(<advancedrocketry:launchpad> * 2,
 [[null, null, null],
 [<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>],
 [<engineersdecor:rebar_concrete>, <immersiveengineering:metal_device1:6>, <engineersdecor:rebar_concrete>]]);
 
//Make Carbon Brick recipe that of actual activated carbon
recipes.remove(<advancedrocketry:misc:1>);
CokeOven.addRecipe(<advancedrocketry:misc:1>, 0, <ore:charcoal>, 1200);

//Iridium Crubible
recipes.remove(<advancedrocketry:iquartzcrucible>);

//Import
import mods.jei.JEI.removeAndHide;
import mods.jei.JEI.hide;
import mods.immersiveengineering.CokeOven;
 
 
 
//Chip conversion recipes
recipes.remove(<advancedrocketry:satelliteidchip>);
recipes.remove(<advancedrocketry:asteroidchip>);
recipes.remove(<advancedrocketry:spacestationchip>);
recipes.remove(<advancedrocketry:planetidchip>);
recipes.addShaped(<advancedrocketry:satelliteidchip>,
 [[<mekanism:configurator:*>.giveBack(), <ore:solderItem>, null],
 [null, <advancedrocketry:ic:1>, null],
 [null, null, null]]);
recipes.addShaped(<advancedrocketry:asteroidchip>,
 [[<mekanism:configurator:*>.giveBack(), null, <ore:solderItem>],
 [null, <advancedrocketry:ic:1>, null],
 [null, null, null]]);
recipes.addShaped(<advancedrocketry:elevatorchip>,
 [[<mekanism:configurator:*>.giveBack(), null, null],
 [null, <advancedrocketry:ic:1>, <ore:solderItem>],
 [null, null, null]]);
recipes.addShaped(<advancedrocketry:spacestationchip>,
 [[<mekanism:configurator:*>.giveBack(), null, null],
 [null, <advancedrocketry:ic:1>, null],
 [null, null, <ore:solderItem>]]);
recipes.addShaped(<advancedrocketry:planetidchip>,
 [[<mekanism:configurator:*>.giveBack(), null, null],
 [null, <advancedrocketry:ic:1>, null],
 [null, <ore:solderItem>, null]]);

//Add full data chip to GPS unit craft. 250 data per elite circuit, 500 per ultimate
recipes.addShapeless(<ore:gpsUnitItem>.firstItem * 4, [<advancedrocketry:ic:1>, <advancedrocketry:ic:1>, <advancedrocketry:ic:1>, <advancedrocketry:ic:1>, <advancedrocketry:dataunit>.withTag({maxData: 1000, DataType: 1, Data: 1000}).transformReplace(<advancedrocketry:dataunit>)]);
 
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

//Handheld tools
//Ore Scanner recipe
recipes.remove(<advancedrocketry:sealdetector>);
recipes.addShaped(<advancedrocketry:sealdetector>,
 [[<ore:circuitAdvanced>, <ore:paneGlassColorless>, <ore:fanSteel>],
 [<ore:plateTin>, <libvulpes:battery:1>, <ore:plateTin>]]);
recipes.addShaped(<advancedrocketry:sealdetector>,
 [[<ore:circuitAdvanced>, <ore:paneGlassColorless>, <ore:fanSteel>],
 [<ore:plateAluminum>, <libvulpes:battery:1>, <ore:plateAluminum>]]);
//Seal Detector recipe
recipes.remove(<advancedrocketry:orescanner>);
recipes.addShaped(<advancedrocketry:orescanner>,
 [[<ore:circuitAdvanced>, <ore:paneGlassColorless>, <advancedrocketry:ic:1>],
 [<ore:plateTin>, <libvulpes:battery:1>, <ore:plateTin>]]);
recipes.addShaped(<advancedrocketry:orescanner>,
 [[<ore:circuitAdvanced>, <ore:paneGlassColorless>, <advancedrocketry:ic:1>],
 [<ore:plateAluminum>, <libvulpes:battery:1>, <ore:plateAluminum>]]);
//Make Jackhammer not require a diamond, as it does not even show up in the texture and makes little sense
recipes.remove(<advancedrocketry:jackhammer>);
recipes.addShaped(<advancedrocketry:jackhammer>,
 [[null, <ore:plateAluminum>, <ore:stickMolybdenum>],
 [<ore:stickSteel>, <ore:mechanicalComponentSteel>, <ore:plateAluminum>],
 [<ore:ingotTitanium>, <ore:stickSteel>, null]]);
//Atm analyser
recipes.addShaped(<advancedrocketry:atmanalyser>, 
 [[<quark:grate>, <ore:lensGlass>, <ore:itemBattery>],
 [<ore:plateTin>, <ore:circuitElite>, <ore:plateTin>]]);
recipes.addShaped(<advancedrocketry:atmanalyser>, 
 [[<quark:grate>, <ore:lensGlass>, <ore:itemBattery>],
 [<ore:plateAluminum>, <ore:circuitElite>, <ore:plateAluminum>]]);

//Make Carbon Brick recipe that of actual activated carbon
recipes.remove(<advancedrocketry:misc:1>);
CokeOven.addRecipe(<advancedrocketry:misc:1>, 0, <ore:charcoal>, 1200);

//Make Saw Blade recipe require diamonds and steel
recipes.remove(<advancedrocketry:sawbladeiron>);
recipes.addShaped(<advancedrocketry:sawbladeiron>,
 [[null, <ore:dustDiamond>, null],
 [<ore:dustDiamond>, <ore:gearSteel>, <ore:dustDiamond>],
 [null, <ore:dustDiamond>, null]]);

//Make Jetpack recipe more realistic
recipes.remove(<advancedrocketry:jetpack>);
recipes.addShaped(<advancedrocketry:jetpack>,
 [[<minecraft:lever>, <immersiveengineering:wirecoil:4>, <minecraft:lever>],
 [<advancedrocketry:pressuretank:1>, <ore:plateSteel>, <advancedrocketry:pressuretank:1>],
 [<immersiveengineering:toolupgrade:7>, null, <immersiveengineering:toolupgrade:7>]]);
 
//Remove recipes that move to the workbench
//Suit recipes
recipes.remove(<advancedrocketry:spacehelmet>);
recipes.remove(<advancedrocketry:spacechestplate>);
recipes.remove(<advancedrocketry:spaceleggings>);
recipes.remove(<advancedrocketry:spaceboots>);
//Satellite
recipes.remove(<advancedrocketry:satellite>);
recipes.remove(<advancedrocketry:satelliteprimaryfunction:*>);

//Import
import mods.jei.JEI.removeAndHide;



//Removals
removeAndHide(<bullseye:be_icon>);
removeAndHide(<bullseye:arrow:1>);
removeAndHide(<bullseye:arrow:4>);
removeAndHide(<bullseye:arrow:5>);
removeAndHide(<bullseye:arrow:6>);
removeAndHide(<bullseye:arrow:8>);
removeAndHide(<bullseye:arrow:9>);
removeAndHide(<bullseye:arrow:10>);

//Arrow recipe changes to be in line with Vanilla arrow changes
recipes.remove(<bullseye:arrow:0>);
recipes.remove(<bullseye:arrow:2>);
recipes.remove(<bullseye:arrow:3>);
recipes.remove(<bullseye:arrow:7>);
recipes.addShaped(<bullseye:arrow> * 8,
 [[null, null, <minecraft:rabbit_hide>],
 [null, <ore:stickWood>, null],
 [<ore:feather>, null, null]]);
recipes.addShaped(<bullseye:arrow> * 4,
 [[null, null, <minecraft:rabbit_hide>],
 [null, <ore:stickWood>, null],
 [<ore:paper>, null, null]]);
recipes.addShaped(<bullseye:arrow:2> * 8,
 [[null, null, <minecraft:potion>.withTag({Potion: "water"})],
 [null, <ore:stickWood>, null],
 [<ore:feather>, null, null]]);
recipes.addShaped(<bullseye:arrow:2> * 4,
 [[null, null, <minecraft:potion>.withTag({Potion: "water"})],
 [null, <ore:stickWood>, null],
 [<ore:paper>, null, null]]);
recipes.addShaped(<bullseye:arrow:3> * 12,
 [[null, null, <ore:nuggetSteel>],
 [null, <ore:stickWood>, <ore:nuggetSteel>],
 [<ore:feather>, null, null]]);
recipes.addShaped(<bullseye:arrow:3> * 6,
 [[null, null, <ore:nuggetSteel>],
 [null, <ore:stickWood>, <ore:nuggetSteel>],
 [<ore:paper>, null, null]]);
recipes.addShaped(<bullseye:arrow:7> * 12,
 [[null, null, <ore:netherStar>],
 [null, <ore:stickWood>, <ore:dustPrismarine>],
 [<ore:feather>, null, null]]);
recipes.addShaped(<bullseye:arrow:7> * 6,
 [[null, null, <ore:netherStar>],
 [null, <ore:stickWood>, <ore:dustPrismarine>],
 [<ore:paper>, null, null]]);

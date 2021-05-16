//Import
import crafttweaker.item.IItemStack;
import mods.jei.JEI.removeAndHide;



//Make bed require treated wood
//I'm not making GT:NH I swear
recipes.remove(<ore:bed>);
recipes.addShaped(<minecraft:bed>,
 [[<minecraft:wool>, <minecraft:wool>, <minecraft:wool>],
 [<ore:fenceTreatedWood>, <ore:slabTreatedWood>, <ore:fenceTreatedWood>]]);
recipes.addShaped(<minecraft:bed:1>,
 [[<minecraft:wool:1>, <minecraft:wool:1>, <minecraft:wool:1>],
 [<ore:fenceTreatedWood>, <ore:slabTreatedWood>, <ore:fenceTreatedWood>]]);
recipes.addShaped(<minecraft:bed:2>,
 [[<minecraft:wool:2>, <minecraft:wool:2>, <minecraft:wool:2>],
 [<ore:fenceTreatedWood>, <ore:slabTreatedWood>, <ore:fenceTreatedWood>]]);
recipes.addShaped(<minecraft:bed:3>,
 [[<minecraft:wool:3>, <minecraft:wool:3>, <minecraft:wool:3>],
 [<ore:fenceTreatedWood>, <ore:slabTreatedWood>, <ore:fenceTreatedWood>]]);
recipes.addShaped(<minecraft:bed:4>,
 [[<minecraft:wool:4>, <minecraft:wool:4>, <minecraft:wool:4>],
 [<ore:fenceTreatedWood>, <ore:slabTreatedWood>, <ore:fenceTreatedWood>]]);
recipes.addShaped(<minecraft:bed:5>,
 [[<minecraft:wool:5>, <minecraft:wool:5>, <minecraft:wool:5>],
 [<ore:fenceTreatedWood>, <ore:slabTreatedWood>, <ore:fenceTreatedWood>]]);
recipes.addShaped(<minecraft:bed:6>,
 [[<minecraft:wool:6>, <minecraft:wool:6>, <minecraft:wool:6>],
 [<ore:fenceTreatedWood>, <ore:slabTreatedWood>, <ore:fenceTreatedWood>]]);
recipes.addShaped(<minecraft:bed:7>,
 [[<minecraft:wool:8>, <minecraft:wool:7>, <minecraft:wool:7>],
 [<ore:fenceTreatedWood>, <ore:slabTreatedWood>, <ore:fenceTreatedWood>]]);
recipes.addShaped(<minecraft:bed:9>,
 [[<minecraft:wool:9>, <minecraft:wool:9>, <minecraft:wool:9>],
 [<ore:fenceTreatedWood>, <ore:slabTreatedWood>, <ore:fenceTreatedWood>]]);
recipes.addShaped(<minecraft:bed:10>,
 [[<minecraft:wool:10>, <minecraft:wool:10>, <minecraft:wool:10>],
 [<ore:fenceTreatedWood>, <ore:slabTreatedWood>, <ore:fenceTreatedWood>]]);
recipes.addShaped(<minecraft:bed:11>,
 [[<minecraft:wool:11>, <minecraft:wool:11>, <minecraft:wool:11>],
 [<ore:fenceTreatedWood>, <ore:slabTreatedWood>, <ore:fenceTreatedWood>]]);
recipes.addShaped(<minecraft:bed:12>,
 [[<minecraft:wool:12>, <minecraft:wool:12>, <minecraft:wool:12>],
 [<ore:fenceTreatedWood>, <ore:slabTreatedWood>, <ore:fenceTreatedWood>]]);
recipes.addShaped(<minecraft:bed:13>,
 [[<minecraft:wool:13>, <minecraft:wool:13>, <minecraft:wool:13>],
 [<ore:fenceTreatedWood>, <ore:slabTreatedWood>, <ore:fenceTreatedWood>]]);
recipes.addShaped(<minecraft:bed:14>,
 [[<minecraft:wool:14>, <minecraft:wool:14>, <minecraft:wool:14>],
 [<ore:fenceTreatedWood>, <ore:slabTreatedWood>, <ore:fenceTreatedWood>]]);
recipes.addShaped(<minecraft:bed:15>,
 [[<minecraft:wool:15>, <minecraft:wool:15>, <minecraft:wool:15>],
 [<ore:fenceTreatedWood>, <ore:slabTreatedWood>, <ore:fenceTreatedWood>]]);
 
 

//Sleeping bag recipes, hemp and leather
//We don't need the Tools one, really - 
removeAndHide(<engineerstools:sleeping_bag>);
recipes.remove(<comforts:sleeping_bag:*>);
//Comforts recipes
recipes.addShaped(<comforts:sleeping_bag>,
 [[<ore:leatherStrip>, <ore:leatherStrip>, null],
 [<minecraft:wool>, <minecraft:wool>, <minecraft:wool>],
 [<ore:fabricHemp>, <ore:fabricHemp>, <ore:fabricHemp>]]);
recipes.addShaped(<comforts:sleeping_bag:1>,
 [[<ore:leatherStrip>, <ore:leatherStrip>, null],
 [<minecraft:wool:1>, <minecraft:wool:1>, <minecraft:wool:1>],
 [<ore:fabricHemp>, <ore:fabricHemp>, <ore:fabricHemp>]]);
recipes.addShaped(<comforts:sleeping_bag:2>,
 [[<ore:leatherStrip>, <ore:leatherStrip>, null],
 [<minecraft:wool:2>, <minecraft:wool:2>, <minecraft:wool:2>],
 [<ore:fabricHemp>, <ore:fabricHemp>, <ore:fabricHemp>]]);
recipes.addShaped(<comforts:sleeping_bag:3>,
 [[<ore:leatherStrip>, <ore:leatherStrip>, null],
 [<minecraft:wool:3>, <minecraft:wool:3>, <minecraft:wool:3>],
 [<ore:fabricHemp>, <ore:fabricHemp>, <ore:fabricHemp>]]);
recipes.addShaped(<comforts:sleeping_bag:4>,
 [[<ore:leatherStrip>, <ore:leatherStrip>, null],
 [<minecraft:wool:4>, <minecraft:wool:4>, <minecraft:wool:4>],
 [<ore:fabricHemp>, <ore:fabricHemp>, <ore:fabricHemp>]]);
recipes.addShaped(<comforts:sleeping_bag:5>,
 [[<ore:leatherStrip>, <ore:leatherStrip>, null],
 [<minecraft:wool:5>, <minecraft:wool:5>, <minecraft:wool:5>],
 [<ore:fabricHemp>, <ore:fabricHemp>, <ore:fabricHemp>]]);
recipes.addShaped(<comforts:sleeping_bag:6>,
 [[<ore:leatherStrip>, <ore:leatherStrip>, null],
 [<minecraft:wool:6>, <minecraft:wool:6>, <minecraft:wool:6>],
 [<ore:fabricHemp>, <ore:fabricHemp>, <ore:fabricHemp>]]);
recipes.addShaped(<comforts:sleeping_bag:7>,
 [[<ore:leatherStrip>, <ore:leatherStrip>, null],
 [<minecraft:wool:8>, <minecraft:wool:7>, <minecraft:wool:7>],
 [<ore:fabricHemp>, <ore:fabricHemp>, <ore:fabricHemp>]]);
recipes.addShaped(<comforts:sleeping_bag:9>,
 [[<ore:leatherStrip>, <ore:leatherStrip>, null],
 [<minecraft:wool:9>, <minecraft:wool:9>, <minecraft:wool:9>],
 [<ore:fabricHemp>, <ore:fabricHemp>, <ore:fabricHemp>]]);
recipes.addShaped(<comforts:sleeping_bag:10>,
 [[<ore:leatherStrip>, <ore:leatherStrip>, null],
 [<minecraft:wool:10>, <minecraft:wool:10>, <minecraft:wool:10>],
 [<ore:fabricHemp>, <ore:fabricHemp>, <ore:fabricHemp>]]);
recipes.addShaped(<comforts:sleeping_bag:11>,
 [[<ore:leatherStrip>, <ore:leatherStrip>, null],
 [<minecraft:wool:11>, <minecraft:wool:11>, <minecraft:wool:11>],
 [<ore:fabricHemp>, <ore:fabricHemp>, <ore:fabricHemp>]]);
recipes.addShaped(<comforts:sleeping_bag:12>,
 [[<ore:leatherStrip>, <ore:leatherStrip>, null],
 [<minecraft:wool:12>, <minecraft:wool:12>, <minecraft:wool:12>],
 [<ore:fabricHemp>, <ore:fabricHemp>, <ore:fabricHemp>]]);
recipes.addShaped(<comforts:sleeping_bag:13>,
 [[<ore:leatherStrip>, <ore:leatherStrip>, null],
 [<minecraft:wool:13>, <minecraft:wool:13>, <minecraft:wool:13>],
 [<ore:fabricHemp>, <ore:fabricHemp>, <ore:fabricHemp>]]);
recipes.addShaped(<comforts:sleeping_bag:14>,
 [[<ore:leatherStrip>, <ore:leatherStrip>, null],
 [<minecraft:wool:14>, <minecraft:wool:14>, <minecraft:wool:14>],
 [<ore:fabricHemp>, <ore:fabricHemp>, <ore:fabricHemp>]]);
recipes.addShaped(<comforts:sleeping_bag:15>,
 [[<ore:leatherStrip>, <ore:leatherStrip>, null],
 [<minecraft:wool:15>, <minecraft:wool:15>, <minecraft:wool:15>],
 [<ore:fabricHemp>, <ore:fabricHemp>, <ore:fabricHemp>]]);

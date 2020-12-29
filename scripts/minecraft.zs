//Import
import crafttweaker.item.IItemStack;
import mods.jei.JEI.removeAndHide;
import mods.futuremc.Campfire;

//Remove Minecraft things from JEI that don't need to be there, technical blocks and tools superseeded by flint (stone)
var minecraftToRemove = [<minecraft:command_block>,
                         <minecraft:barrier>,
                         <minecraft:repeating_command_block>,
                         <minecraft:chain_command_block>,
                         <minecraft:structure_void>,
                         <minecraft:structure_block>,
                         <minecraft:command_block_minecart>,
                         <minecraft:knowledge_book>,
                         <minecraft:stone_axe>,
                         <minecraft:stone_hoe>,
                         <minecraft:stone_pickaxe>,
                         <minecraft:stone_shovel>,
                         <minecraft:stone_sword>,
                         <forge:bucketfilled>.withTag({FluidName: "heat", Amount: 1000})
                         ] as IItemStack[];
for item in minecraftToRemove{
    removeAndHide(item);
    }
//Remove recipes for some tools. Find them
//Seriously, how do you make a solid diamond tool other than "magic". Yes, I _do_ know the vanilla crafting table is magic. I aim to fix that.
var toolsToRemove = [<minecraft:iron_axe>,
                     <minecraft:iron_hoe>,
                     <minecraft:iron_pickaxe>,
                     <minecraft:iron_shovel>,
                     <minecraft:iron_sword>,
                     <minecraft:golden_axe>,
                     <minecraft:golden_hoe>,
                     <minecraft:golden_pickaxe>,
                     <minecraft:golden_shovel>,
                     <minecraft:golden_sword>,
                     <minecraft:diamond_axe>,
                     <minecraft:diamond_hoe>,
                     <minecraft:diamond_pickaxe>,
                     <minecraft:diamond_shovel>,
                     <minecraft:diamond_sword>,
                     <minecraft:diamond_helmet>,
                     <minecraft:diamond_chestplate>,
                     <minecraft:diamond_leggings>,
                     <minecraft:diamond_boots>
                     ] as IItemStack[];
for item in toolsToRemove{
    recipes.remove(item);
    }

//Remove Chainmail recipes with flex mesh
recipes.removeByRecipeName("tetra:chainmail_helmet");
recipes.removeByRecipeName("tetra:chainmail_chestplate");
recipes.removeByRecipeName("tetra:chainmail_leggings");
recipes.removeByRecipeName("tetra:chainmail_boots");
    
//Make detector rails crafted from modifying a normal rail
recipes.remove(<minecraft:detector_rail>);
recipes.addShaped(<minecraft:detector_rail>,
 [[<minecraft:rail>],
 [<minecraft:stone_pressure_plate>]]);
 
//Make activator rails crafted from modifying a normal rail
recipes.remove(<minecraft:activator_rail>);
recipes.addShaped(<minecraft:activator_rail>,
 [[<minecraft:rail>],
 [<minecraft:redstone_torch>]]);

//Remove Quark recipes for Minecraft items that interfere
recipes.removeByRecipeName("quark:hopper");
recipes.removeByRecipeName("quark:chest_minecart");
recipes.removeByRecipeName("quark:furnace_minecart");
recipes.removeByRecipeName("quark:hopper_minecart");
recipes.removeByRecipeName("quark:tnt_minecart");
recipes.removeByRecipeName("quark:chest_minecart_1");
recipes.remove(<charm:composter>);
recipes.addShaped(<charm:composter>,
 [[<ore:plankWood>, null, <ore:plankWood>],
 [<ore:trapdoorWood>, null, <ore:trapdoorWood>],
 [<ore:plankWood>, <ore:slabWood>, <ore:plankWood>]]);
recipes.remove(<filteredhopper:filteredhopper>);
recipes.addShaped(<filteredhopper:filteredhopper>,
 [[<minecraft:iron_bars>],
 [<minecraft:hopper>]]);

//Platforms recipes make a little more sense
recipes.remove(<platforms:wrench>);
recipes.remove(<platforms:platform:50>);
recipes.addShaped(<platforms:wrench>,
 [[null, <ore:stickIron>, <ore:stickIron>],
 [<ore:leatherSheet>, <ore:stickTreatedWood>, <ore:mechanicalComponentAny>],
 [<ore:stickTreatedWood>, <ore:dyeRed>, null]]);
recipes.addShaped(<platforms:platform:50>,
 [[<ore:sheetIron>, <ore:stickIron>, <ore:sheetIron>],
 [<ore:dyeRed>, <ore:stickIron>, <ore:dyeRed>],
 [<ore:sheetIron>, <minecraft:crafting_table>, <ore:sheetIron>]]);
 
//Compass Nuggets
recipes.replaceAllOccurences(<ore:ingotIron>, <ore:nuggetIron>, <minecraft:compass>);

//Remove Charcoal from furnace
furnace.remove(<minecraft:coal:1>);

//Add dusts as furnace fuel
furnace.setFuel(<ore:dustCoke>, 4000);
furnace.setFuel(<ore:dustCharcoal>, 2000);

//Pantograph has iron rods instead of ingots
recipes.replaceAllOccurences(<ore:listAllmetalingots>, <ore:stickIron>, <pantography:pantograph>);

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
 
//Remove Forestry capsule useage as they "don't exist"
recipes.removeByRecipeName("forestry:cake_can");
recipes.removeByRecipeName("forestry:cake_capsule");
recipes.removeByRecipeName("forestry:cake_refractory");

//Arrows
recipes.remove(<minecraft:arrow>);
recipes.addShaped(<minecraft:arrow> * 8,
 [[null, null, <flintmod:tool_part_flint>],
 [null, <ore:stickWood>, null],
 [<ore:feather>, null, null]]);
recipes.addShaped(<minecraft:arrow> * 4,
 [[null, null, <flintmod:tool_part_flint>],
 [null, <ore:stickWood>, null],
 [<ore:paper>, null, null]]);
recipes.addShaped(<minecraft:arrow> * 12,
 [[null, null, <ore:nuggetIron>],
 [null, <ore:stickWood>, <ore:nuggetIron>],
 [<ore:feather>, null, null]]);
recipes.addShaped(<minecraft:arrow> * 6,
 [[null, null, <ore:nuggetIron>],
 [null, <ore:stickWood>, <ore:nuggetIron>],
 [<ore:paper>, null, null]]);

/*
//Bones from animals for bonemeal early
//This would be enabled if it didn't cause @$#@#$ random crashes I can't trace
//Large animals: horses & variants, llamas, grizzly bears, polar bears, and panda bears
<entity:minecraft:horse>.addDrop(<minecraft:bone>, 1, 3);
<entity:minecraft:donkey>.addDrop(<minecraft:bone>, 1, 3);
<entity:minecraft:mule>.addDrop(<minecraft:bone>, 1, 3);
<entity:minecraft:llama>.addDrop(<minecraft:bone>, 1, 3);
<entity:pvj:pvj_grizzly_bear>.addDrop(<minecraft:bone>, 1, 3);
<entity:minecraft:polar_bear>.addDrop(<minecraft:bone>, 1, 3);
<entity:futuremc:panda>.addDrop(<minecraft:bone>, 1, 3);
//Medium animals: cows, pigs, deer, sheep
<entity:minecraft:cow>.addDrop(<minecraft:bone>, 1, 2);
//<entity:minecraft:pig>.addDrop(<minecraft:bone>, 1, 2);
<entity:minecraft:sheep>.addDrop(<minecraft:bone>, 1, 2);
//Small animals: chickens, ducks, foxes, wolves, coyotes, owls
<entity:minecraft:chicken>.addDrop(<minecraft:bone>, 0, 1);
<entity:pvj:pvj_duck>.addDrop(<minecraft:bone>, 0, 1);
<entity:minecraft:wolf>.addDrop(<minecraft:bone>, 0, 1);
//<entity:pvj:pvj_coyote>.addDrop(<minecraft:bone>, 0, 1);
//Tiny animals such as frogs and parrots drop no bones, and invertibrates such as squids also drop none
*/

//Food campfire cooking
Campfire.addRecipe(<aquaculture:food:3>, <aquaculture:food:4>, 600);
Campfire.addRecipe(<aquaculture:food:2>, <aquaculture:food:5>, 600);
Campfire.addRecipe(<pvj:raw_duck>, <pvj:cooked_duck>, 600);
Campfire.addRecipe(<pvj:raw_squid>, <pvj:cooked_squid>, 600);
Campfire.addRecipe(<simplecorn:corncob>, <simplecorn:roastedcorn>, 600);

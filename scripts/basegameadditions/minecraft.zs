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
                     <minecraft:diamond_boots>,
                     <flintmod:tool_part_flint>
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
 
//Compass Nuggets
recipes.replaceAllOccurences(<ore:ingotIron>, <ore:nuggetIron>, <minecraft:compass>);

//Remove Charcoal from furnace
furnace.remove(<minecraft:coal:1>);

//Add dusts as furnace fuel
furnace.setFuel(<ore:dustCoke>, 4000);
furnace.setFuel(<ore:dustCharcoal>, 2000);

//Pantograph has iron rods instead of ingots
recipes.replaceAllOccurences(<ore:listAllmetalingots>, <ore:stickIron>, <pantography:pantograph>);
 
//Remove Forestry capsule useage as they "don't exist"
recipes.removeByRecipeName("forestry:cake_can");
recipes.removeByRecipeName("forestry:cake_capsule");
recipes.removeByRecipeName("forestry:cake_refractory");

//Arrows
recipes.remove(<minecraft:arrow>);
recipes.remove(<bullseye:arrow:3>);
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
recipes.addShaped(<bullseye:arrow:3> * 12,
 [[null, null, <ore:nuggetSteel>],
 [null, <ore:stickWood>, <ore:nuggetSteel>],
 [<ore:feather>, null, null]]);
recipes.addShaped(<bullseye:arrow:3> * 6,
 [[null, null, <ore:nuggetSteel>],
 [null, <ore:stickWood>, <ore:nuggetSteel>],
 [<ore:paper>, null, null]]);

//Stone types
recipes.removeByRecipeName("environmentalmaterials:m_alabaster/normal/alabaster_c_white_temp");
recipes.removeByRecipeName("environmentalmaterials:m_basalt/normal/c_block");
recipes.removeByRecipeName("environmentalmaterials:m_hardened_stone/normal/c_block");
furnace.addRecipe(<environmentalmaterials:basalt>, <quark:basalt>);
furnace.addRecipe(<environmentalmaterials:hardened_stone>, <ore:stone>);
furnace.addRecipe(<environmentalmaterials:alabaster>, <ore:stoneMarblePolished>);
furnace.addRecipe(<environmentalmaterials:alabaster>, <ore:stoneLimestonePolished>);
furnace.addRecipe(<environmentalmaterials:alabaster>, <quark:slate:1>);
 
//Bones from animals for bonemeal early
//This would be enabled if it didn't cause @$#@#$ random crashes I can't trace
//Large animals: horses & variants, llamas, grizzly bears, polar bears, and panda bears
<entity:minecraft:horse>.addDrop(<minecraft:bone>, 1, 4);
<entity:minecraft:donkey>.addDrop(<minecraft:bone>, 1, 4);
<entity:minecraft:mule>.addDrop(<minecraft:bone>, 1, 4);
<entity:minecraft:llama>.addDrop(<minecraft:bone>, 1, 4);
<entity:pvj:pvj_grizzly_bear>.addDrop(<minecraft:bone>, 1, 4);
<entity:minecraft:polar_bear>.addDrop(<minecraft:bone>, 1, 4);
<entity:futuremc:panda>.addDrop(<minecraft:bone>, 1, 4);
//Medium animals: cows, pigs, deer, sheep
<entity:minecraft:cow>.addDrop(<minecraft:bone>, 1, 3);
<entity:minecraft:pig>.addDrop(<minecraft:bone>, 1, 3);
<entity:minecraft:sheep>.addDrop(<minecraft:bone>, 1, 3);
//Small animals: chickens, ducks, foxes, wolves, coyotes, owls
<entity:minecraft:chicken>.addDrop(<minecraft:bone>, 0, 2);
<entity:pvj:pvj_duck>.addDrop(<minecraft:bone>, 0, 2);
<entity:minecraft:wolf>.addDrop(<minecraft:bone>, 0, 2);
<entity:pvj:pvj_coyote>.addDrop(<minecraft:bone>, 0, 2);
//Fish
<entity:futuremc:cod>.addDrop(<aquaculture:fish:38>, 0, 2);
<entity:futuremc:salmon>.addDrop(<aquaculture:fish:38>, 0, 2);
<entity:futuremc:pufferfish>.addDrop(<aquaculture:fish:38>, 0, 2);
<entity:futuremc:tropical_fish>.addDrop(<aquaculture:fish:38>, 0, 2);
//Tiny animals such as frogs and parrots drop no bones, and invertibrates such as squids also drop none

//Food campfire cooking
Campfire.addRecipe(<aquaculture:food:3>, <aquaculture:food:4>, 600);
Campfire.addRecipe(<aquaculture:food:2>, <aquaculture:food:5>, 600);
Campfire.addRecipe(<pvj:raw_duck>, <pvj:cooked_duck>, 600);
Campfire.addRecipe(<pvj:raw_squid>, <pvj:cooked_squid>, 600);
Campfire.addRecipe(<simplecorn:corncob>, <simplecorn:roastedcorn>, 600);

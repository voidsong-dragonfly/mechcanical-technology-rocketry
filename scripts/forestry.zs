//Import
import mods.jei.JEI.removeAndHide;
import mods.jei.JEI.hide;
import crafttweaker.item.IItemStack;
import mods.forestry.CharcoalWall;

//Remove most of Forestry
var forestryRemovals = [<forestry:wrench>,
                        <forestry:pipette>,
                        <forestry:sturdy_machine>,
                        <forestry:hardened_machine>,
                        <forestry:impregnated_casing>,
                        <forestry:flexible_casing>,
                        <forestry:crafting_material:*>,
                        <forestry:naturalist_helmet>,
                        <forestry:bituminous_peat>,
                        <forestry:chipsets:*>, 
                        <forestry:soldering_iron>,
                        <forestry:carton>,
                        <forestry:oak_stick>,
                        <forestry:wood_pulp>,
                        <forestry:broken_bronze_shovel>,
                        <forestry:bronze_shovel>,
                        <forestry:broken_bronze_pickaxe>,
                        <forestry:bronze_pickaxe>,
                        <forestry:kit_shovel>,
                        <forestry:kit_pickaxe>,
                        <forestry:mouldy_wheat>,
                        <forestry:decaying_wheat>,
                        <forestry:iodine_capsule>,
                        <forestry:phosphor>,
                        <forestry:beeswax>,
                        <forestry:refractory_wax>,
                        <forestry:fruits:*>,
                        <forestry:analyzer>,
                        <forestry:escritoire>,
                        <forestry:resources:*>,
                        <forestry:resource_storage:*>,
                        <forestry:can:*>,
                        <forestry:capsule:*>,
                        <forestry:refractory:*>,
                        <forestry:portable_alyzer>,
                        ] as IItemStack[];
for item in forestryRemovals{
    removeAndHide(item);
    }
    
//Forestry crafting changes
//Fertilizer
recipes.remove(<forestry:fertilizer_bio>);
//Lowest Quality
recipes.addShaped(<forestry:fertilizer_compound> * 4,
 [[<ore:dustSaltpeter>, <mekanism:biofuel>, <mekanism:biofuel>],
 [<mekanism:biofuel>, <mekanism:biofuel>, null]]);
recipes.addShaped(<forestry:fertilizer_compound> * 4,
 [[<ore:dustAsh>, <mekanism:biofuel>, <mekanism:biofuel>],
 [<mekanism:biofuel>, <mekanism:biofuel>, null]]);
//Slightly better ingredients
recipes.addShaped(<forestry:fertilizer_compound> * 6,
 [[<ore:dustSaltpeter>, <forestry:fertilizer_bio>, <forestry:fertilizer_bio>],
 [<forestry:fertilizer_bio>, <forestry:fertilizer_bio>, null]]);
recipes.addShaped(<forestry:fertilizer_compound> * 6,
 [[<ore:dustAsh>, <forestry:fertilizer_bio>, <forestry:fertilizer_bio>],
 [<forestry:fertilizer_bio>, <forestry:fertilizer_bio>, null]]);
//Medium Quality
recipes.addShaped(<forestry:fertilizer_compound> * 6,
 [[<contenttweaker:calcium_dust>, <ore:dustSaltpeter>, <mekanism:biofuel>],
 [<mekanism:biofuel>, <mekanism:biofuel>, <mekanism:biofuel>]]);
recipes.addShaped(<forestry:fertilizer_compound> * 6,
 [[<minecraft:dye:15>, <ore:dustSaltpeter>, <mekanism:biofuel>],
 [<mekanism:biofuel>, <mekanism:biofuel>, <mekanism:biofuel>]]);
recipes.addShaped(<forestry:fertilizer_compound> * 6,
 [[<contenttweaker:calcium_dust>, <ore:dustAsh>, <mekanism:biofuel>],
 [<mekanism:biofuel>, <mekanism:biofuel>, <mekanism:biofuel>]]);
recipes.addShaped(<forestry:fertilizer_compound> * 6,
 [[<minecraft:dye:15>, <ore:dustAsh>, <mekanism:biofuel>],
 [<mekanism:biofuel>, <mekanism:biofuel>, <mekanism:biofuel>]]);
//Highest Quality
recipes.addShaped(<forestry:fertilizer_compound> * 8,
 [[<contenttweaker:calcium_dust>, <ore:dustSaltpeter>, <forestry:fertilizer_bio>],
 [<forestry:fertilizer_bio>, <forestry:fertilizer_bio>, <forestry:fertilizer_bio>]]);
recipes.addShaped(<forestry:fertilizer_compound> * 8,
 [[<minecraft:dye:15>, <ore:dustSaltpeter>, <forestry:fertilizer_bio>],
 [<forestry:fertilizer_bio>, <forestry:fertilizer_bio>, <forestry:fertilizer_bio>]]);
recipes.addShaped(<forestry:fertilizer_compound> * 8,
 [[<contenttweaker:calcium_dust>, <ore:dustAsh>, <forestry:fertilizer_bio>],
 [<forestry:fertilizer_bio>, <forestry:fertilizer_bio>, <forestry:fertilizer_bio>]]);
recipes.addShaped(<forestry:fertilizer_compound> * 8,
 [[<minecraft:dye:15>, <ore:dustAsh>, <forestry:fertilizer_bio>],
 [<forestry:fertilizer_bio>, <forestry:fertilizer_bio>, <forestry:fertilizer_bio>]]);

//Remove can recipes
recipes.removeByRecipeName("forestry:can_bog_earth");
recipes.removeByRecipeName("forestry:capsule_bog_earth");
recipes.removeByRecipeName("forestry:refractory_capsule_bog_earth");

//Redo ash brick stairs
recipes.remove(<forestry:ash_stairs>);
recipes.addShaped(<forestry:ash_stairs> * 8,
 [[<forestry:ash_brick>, null, null],
 [<forestry:ash_brick>, <forestry:ash_brick>, null],
 [<forestry:ash_brick>, <forestry:ash_brick>, <forestry:ash_brick>]]);
 
//Remove endstone as an applicable material for charcoal piles
CharcoalWall.removeWall(<minecraft:netherrack>.asBlock());
CharcoalWall.removeWall(<minecraft:end_stone>.asBlock());
CharcoalWall.removeWall(<minecraft:end_bricks>.asBlock());

//Add coke brick and reinforced coke brick as options
CharcoalWall.addWallStack(<immersiveengineering:stone_decoration>, 4);
CharcoalWall.addWallStack(<immersivetech:stone_decoration>, 7);

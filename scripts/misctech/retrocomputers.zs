//Import
import crafttweaker.item.IItemStack;
import mods.jei.JEI.removeAndHide;

//Remove QuackLib items that we do NOT need
var partsToRemove = [<quacklib:component:*>,
                     <quacklib:nikolite_ore>,
                     <quacklib:alloy_furnace>,
                     <quacklib:multiblock_test>,
                     <quacklib:wrench>,
                     <retrocomputers:debug>
                     ] as IItemStack[];
for item in partsToRemove{
    removeAndHide(item);
    }


    
//Redo screwdriver recipe
recipes.remove(<retrocomputers:screwdriver>);
recipes.addShaped(<retrocomputers:screwdriver>,
 [[null, null, <ore:stickIron>],
 [null, <ore:stickIron>, null],
 [<ore:stickTreatedWood>, <ore:leatherStrip>, null]]);
 
//Remove block recipes for blueprint assembly
recipes.remove(<retrocomputers:backplane>);
recipes.remove(<retrocomputers:radio>);
recipes.remove(<retrocomputers:ribbon_cable>);
recipes.remove(<retrocomputers:terminal>);
recipes.remove(<retrocomputers:memory>);
removeAndHide(<retrocomputers:retinal_scanner>);
recipes.remove(<retrocomputers:computer>);
recipes.remove(<retrocomputers:disk_drive>);
recipes.remove(<retrocomputers:redstone_port_analog>);
recipes.remove(<retrocomputers:writable_disk>);
recipes.remove(<retrocomputers:cpu>);

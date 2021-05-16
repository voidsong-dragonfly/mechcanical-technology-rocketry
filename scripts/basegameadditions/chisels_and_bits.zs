//Import
import crafttweaker.item.IItemStack;
import mods.jei.JEI.removeAndHide;



//Tool recipe changes
//Saw
recipes.remove(<chiselsandbits:bitsaw_diamond>);
recipes.addShaped(<chiselsandbits:bitsaw_diamond>,
 [[<ore:stickTreatedWood>, <ore:leatherStrip>, <ore:stickTreatedWood>],
 [<ore:stickTreatedWood>, <ore:plateSteel>, <ore:stickTreatedWood>],
 [<ore:stickTreatedWood>, <ore:dustDiamond>,<ore:stickTreatedWood>]]);
//Chisels
recipes.replaceAllOccurences(<ore:ingotGold>, <ore:ingotBronze>, <chiselsandbits:chisel_gold>);
recipes.replaceAllOccurences(<ore:gemDiamond>, <ore:ingotSteel>, <chiselsandbits:chisel_diamond>);

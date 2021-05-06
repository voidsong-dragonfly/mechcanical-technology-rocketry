//Import
import crafttweaker.item.IItemStack;
import mods.jei.JEI.removeAndHide;
import mods.jei.JEI.hide;
import mods.mekanism.chemical.injection;
import mods.mekanism.GasConversion;



//Remove Mekanism boilers, we have those in Immersive Technology already
//With much better balance and mechanics that make sense, too!
var mekSteamRemovals = [<mekanism:basicblock2:5>,
                        <mekanism:basicblock2:6>,
                        <mekanism:basicblock2:7>,
                        <mekanism:basicblock2:8>
                        ] as IItemStack[];
for item in mekSteamRemovals{
    removeAndHide(item);
    }
    
//Remove Mekanism ore processing items that are unused
var mekOresRemovals = [<mekanism:clump:*>,
                       <mekanism:shard:*>,
                       <mekanism:crystal:*>,
                       <mekanism:dirtydust:2>,
                       <mekores:mekanismore:0>,
                       <mekores:mekanismore:1>,
                       <mekores:mekanismore:2>,
                       <mekores:mekanismore:10>,
                       <mekores:mekanismore:11>,
                       <mekores:mekanismore:12>,
                       <mekores:mekanismore:15>,
                       <mekores:mekanismore:16>,
                       <mekores:mekanismore:17>,
                       <mekores:mekanismore:20>,
                       <mekores:mekanismore:21>,
                       <mekores:mekanismore:22>,
                       <mekores:mekanismore:30>,
                       <mekores:mekanismore:31>,
                       <mekores:mekanismore:32>,
                       <mekores:mekanismore:75>,
                       <mekores:mekanismore:76>,
                       <mekores:mekanismore:77>,
                       <mekores:mekanismore:80>,
                       <mekores:mekanismore:81>,
                       <mekores:mekanismore:82>,
                       <mekores:mekanismore:85>,
                       <mekores:mekanismore:86>,
                       <mekores:mekanismore:87>,
                       <mekores:mekanismore:105>,
                       <mekores:mekanismore:106>,
                       <mekores:mekanismore:107>,
                       <mekores:mekanismore:125>,
                       <mekores:mekanismore:126>,
                       <mekores:mekanismore:127>
                       ] as IItemStack[];
for item in mekOresRemovals{
    removeAndHide(item);
    }

//Remove Mekanism tools, glowstone and lapis are unrealistic, steel tools are already present in IE, and paxels usurp the REDIA
var mekToolsRemovals = [<mekanismtools:steelpickaxe>,
                        <mekanismtools:steelaxe>,
                        <mekanismtools:steelshovel>,
                        <mekanismtools:steelhoe>,
                        <mekanismtools:steelsword>,
                        <mekanismtools:steelpaxel>,
                        <mekanismtools:steelhelmet>,
                        <mekanismtools:steelchestplate>,
                        <mekanismtools:steelleggings>,
                        <mekanismtools:steelboots>,
                        <mekanismtools:lapislazulipickaxe>,
                        <mekanismtools:lapislazuliaxe>,
                        <mekanismtools:lapislazulishovel>,
                        <mekanismtools:lapislazulihoe>,
                        <mekanismtools:lapislazulisword>,
                        <mekanismtools:lapislazulipaxel>,
                        <mekanismtools:lapislazulihelmet>,
                        <mekanismtools:lapislazulichestplate>,
                        <mekanismtools:lapislazulileggings>,
                        <mekanismtools:lapislazuliboots>,
                        <mekanismtools:woodpaxel>,
                        <mekanismtools:stonepaxel>,
                        <mekanismtools:ironpaxel>,
                        <mekanismtools:goldpaxel>,
                        <mekanismtools:diamondpaxel>,
                        <mekanismtools:bronzepickaxe>,
                        <mekanismtools:bronzeaxe>,
                        <mekanismtools:bronzeshovel>,
                        <mekanismtools:bronzehoe>,
                        <mekanismtools:bronzesword>,
                        <mekanismtools:bronzepaxel>,
                        <mekanismtools:osmiumpickaxe>,
                        <mekanismtools:osmiumaxe>,
                        <mekanismtools:osmiumshovel>,
                        <mekanismtools:osmiumhoe>,
                        <mekanismtools:osmiumsword>,
                        <mekanismtools:osmiumpaxel>,
                        <mekanismtools:obsidianpickaxe>,
                        <mekanismtools:obsidianaxe>,
                        <mekanismtools:obsidianshovel>,
                        <mekanismtools:obsidianhoe>,
                        <mekanismtools:obsidiansword>,
                        <mekanismtools:obsidianpaxel>,
                        <mekanismtools:glowstonepickaxe>,
                        <mekanismtools:glowstoneaxe>,
                        <mekanismtools:glowstoneshovel>,
                        <mekanismtools:glowstonehoe>,
                        <mekanismtools:glowstonesword>,
                        <mekanismtools:glowstonepaxel>
                        ] as IItemStack[];
for item in mekToolsRemovals{
    removeAndHide(item);
    }
    
    
//Hide unused Mekanism items
hide(<mekanism:enrichediron>);
removeAndHide(<mekanism:filterupgrade>);
removeAndHide(<mekanism:electrolyticcore>);
removeAndHide(<mekanism:tierinstaller:*>);
removeAndHide(<mekanism:walkietalkie>);
hide(<mekanism:enrichedalloy>);
hide(<mekanism:reinforcedalloy>);
hide(<mekanism:atomicalloy>);
hide(<mekanism:compressedcarbon>);
hide(<mekanism:compressedredstone>);
hide(<mekanism:compresseddiamond>);
hide(<mekanism:compressedobsidian>);

//Remove energy cubes, if you don't have the resources for an Induction Matrix use flywheels
removeAndHide(<mekanism:energycube:*>);

//Remove obsidian TNT, why would that change anything other than make it worse IRL?
removeAndHide(<mekanism:obsidiantnt>);

//Remove gas upgrades, use the full amount and produce it, no skimping here
removeAndHide(<mekanism:gasupgrade>);

//Remove unrealistic item->gas conversions, readd osmium->gas conversion
//Because seriously, who took a look at flint and said "you know what? you can get pure O2 out of that super easily"
GasConversion.unregisterAll();
GasConversion.register(<ore:ingotOsmium>, <gas:liquidosmium> * 200);

//Remove handcrafting of HDPE and move it to plastic extruder
removeAndHide(<mekanism:polyethene:1>);
recipes.remove(<mekanism:polyethene:*>);

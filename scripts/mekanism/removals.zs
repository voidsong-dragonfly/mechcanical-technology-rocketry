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
    
    
    
//Hide unused Mekanism items
hide(<mekanism:enrichediron>);
removeAndHide(<mekanism:filterupgrade>);
removeAndHide(<mekanism:electrolyticcore>);
removeAndHide(<mekanism:tierinstaller:*>);
removeAndHide(<mekanism:walkietalkie>);
removeAndHide(<mekanism:portableteleporter>);
removeAndHide(<mekanism:teleportationcore>);
removeAndHide(<mekanism:networkreader>);
removeAndHide(<mekanism:substrate>);
hide(<mekanism:enrichedalloy>);
hide(<mekanism:reinforcedalloy>);
hide(<mekanism:atomicalloy>);
hide(<mekanism:compressedcarbon>);
hide(<mekanism:compressedredstone>);
hide(<mekanism:compresseddiamond>);
hide(<mekanism:compressedobsidian>);
//Hide unused mek materials
removeAndHide(<ore:dustRefinedObsidian>);
removeAndHide(<ore:ingotRefinedObsidian>);
removeAndHide(<ore:nuggetRefinedObsidian>);
removeAndHide(<ore:blockRefinedObsidian>);
removeAndHide(<ore:ingotRefinedGlowstone>);
removeAndHide(<ore:nuggetRefinedGlowstone>);
removeAndHide(<ore:blockRefinedGlowstone>);

//Remove bins & gas tanks.... use drawers, LogiPipes, or silos for items, dynamic tanks or IE tanks for gasses
removeAndHide(<mekanism:basicblock:6>);
removeAndHide(<mekanism:basicblock:6>.withTag({tier: 1}));
removeAndHide(<mekanism:basicblock:6>.withTag({tier: 2}));
removeAndHide(<mekanism:basicblock:6>.withTag({tier: 3}));
removeAndHide(<mekanism:basicblock:6>.withTag({tier: 4}));
removeAndHide(<mekanism:gastank>.withTag({tier: 1}));
removeAndHide(<mekanism:gastank>.withTag({tier: 2}));
removeAndHide(<mekanism:gastank>.withTag({tier: 3}));
removeAndHide(<mekanism:gastank>.withTag({tier: 4}));

//Remove teleporter frame.... use EIO for that
removeAndHide(<mekanism:basicblock:7>);

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

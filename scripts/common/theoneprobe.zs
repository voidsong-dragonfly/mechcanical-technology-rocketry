//Import
import crafttweaker.item.IItemStack;
import mods.jei.JEI.removeAndHide;

//Remove Minecraft things from JEI that don't need to be there
var theOneProbeToRemove = [<theoneprobe:probe>,
                           <theoneprobe:creativeprobe>,
                           <theoneprobe:iron_helmet_probe>,
                           <theoneprobe:gold_helmet_probe>,
                           <theoneprobe:diamond_helmet_probe>,
                           <theoneprobe:probe_goggles>
                       ] as IItemStack[];
for item in theOneProbeToRemove{
    removeAndHide(item);
    }

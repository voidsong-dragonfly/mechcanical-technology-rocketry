//Import
import crafttweaker.item.IItemStack;
import mods.jei.JEI.removeAndHide;

//Remove Aquaculture Neptunium items that shouldn't exist IRL or are admin/technical items
var aquacultureToRemove = [<aquaculture:admin_fishing_rod>,
                           <aquaculture:neptunium_axe>,
                           <aquaculture:neptunium_hoe>,
                           <aquaculture:neptunium_pickaxe>,
                           <aquaculture:neptunium_shovel>,
                           <aquaculture:neptunium_sword>,
                           <aquaculture:neptunium_helmet>,
                           <aquaculture:neptunium_chestplate>,
                           <aquaculture:neptunium_leggings>,
                           <aquaculture:neptunium_boots>,
                           <aquaculture:loot:1>,
                           <aquaculture:loot:7>,
                           <aquaculture:diamond_fishing_rod>
                           ] as IItemStack[];
for item in aquacultureToRemove{
    removeAndHide(item);
    }

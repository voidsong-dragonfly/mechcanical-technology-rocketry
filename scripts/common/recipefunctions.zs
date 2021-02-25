//Imports
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;



//Registry function
//Yes, I do know this is an insane number of iterators. This is the easiest way from my perspective to simply provide an array instead of 5 or 6 different functions each with parameters
function register(oredicts as IOreDictEntry[]) {
    for oredict_main, IOreDictEntry in oredicts {
        if (oredicts[oredict_main].name.contains("dust")) {
            for oredict_secondary, IOreDictEntry in oredicts {
                if (oredicts[oredict_secondary].name.contains("ingot")) {
                     furnace.addRecipe(oredicts[oredict_secondary].firstItem, oredicts[oredict_main]);
                }
            }
        } else if (oredicts[oredict_main].name.contains("gear")) { 
            for oredict_secondary, IOreDictEntry in oredicts {
                if (oredicts[oredict_secondary].name.contains("ingot")) {
                     for oredict_tertiary, IOreDictEntry in oredicts {
                        if (oredicts[oredict_tertiary].name.contains("stick")) {
                            for oredict_quaternary, IOreDictEntry in oredicts {
                                if (oredicts[oredict_quaternary].name.contains("plate")) {
                                    recipes.addShaped(oredicts[oredict_main].firstItem,
                                     [[oredicts[oredict_tertiary], oredicts[oredict_quaternary], oredicts[oredict_tertiary]],
                                     [null, oredicts[oredict_secondary], null],
                                     [oredicts[oredict_tertiary], oredicts[oredict_quaternary], oredicts[oredict_tertiary]]]);
                                }
                             }
                        }
                    }
                }
            }
        } else if (oredicts[oredict_main].name.contains("nugget")) {
            for oredict_secondary, IOreDictEntry in oredicts {
                if (oredicts[oredict_secondary].name.contains("ingot")) {
                     recipes.addShapeless(oredicts[oredict_main].firstItem * 9, [oredicts[oredict_secondary]]);
                     recipes.addShaped(oredicts[oredict_secondary].firstItem,
                      [[oredicts[oredict_main], oredicts[oredict_main], oredicts[oredict_main]],
                      [oredicts[oredict_main], oredicts[oredict_main], oredicts[oredict_main]],
                      [oredicts[oredict_main], oredicts[oredict_main], oredicts[oredict_main]]]);
                }
            }
        } else if (oredicts[oredict_main].name.contains("stick")) {
            for oredict_secondary, IOreDictEntry in oredicts {
                if (oredicts[oredict_secondary].name.contains("ingot")) {
                     recipes.addShaped(oredicts[oredict_main].firstItem * 4,
                      [[oredicts[oredict_secondary]],
                      [oredicts[oredict_secondary]]]);
                }
            }
        } else if (oredicts[oredict_main].name.contains("block")) {
            for oredict_secondary, IOreDictEntry in oredicts {
                if (oredicts[oredict_secondary].name.contains("ingot")) {
                     recipes.addShapeless(oredicts[oredict_secondary].firstItem * 9, [oredicts[oredict_main]]);
                     recipes.addShaped(oredicts[oredict_main].firstItem,
                      [[oredicts[oredict_secondary], oredicts[oredict_secondary], oredicts[oredict_secondary]],
                      [oredicts[oredict_secondary], oredicts[oredict_secondary], oredicts[oredict_secondary]],
                      [oredicts[oredict_secondary], oredicts[oredict_secondary], oredicts[oredict_secondary]]]);
                }
            }
        } else if (oredicts[oredict_main].name.contains("plate")) {
            for oredict_secondary, IOreDictEntry in oredicts {
                if (oredicts[oredict_secondary].name.contains("ingot")) {
                     recipes.addShapeless(oredicts[oredict_main].firstItem, [oredicts[oredict_secondary], <immersiveengineering:tool>.transformDamage()]);
                }
            }
        }
    
    }
}

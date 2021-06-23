//Import
import mods.immersiveengineering.DieselHandler;
import mods.immersivetechnology.SteamTurbine;
import mods.immersivetechnology.HighPressureSteamTurbine;
import mods.immersivetechnology.GasTurbine;
import mods.immersivetechnology.Distiller;
import mods.immersivetechnology.Boiler;
import mods.immersivetechnology.SolarTower;
import mods.immersivetechnology.HeatExchanger;
import mods.immersivetechnology.CoolingTower;



/*
   Fuels & cooling tower - power production changes
*/
   
//IRL Diesel energy value ratios
//This should be 150 but that doesn't work well, you get much more energy with a 6mB/t rate than you loose with a 7mB/t rate (compared to the nominal 6.6667mB/t)
//Somehow 140 doesn't make 7 mB/t though so we need to go all the way to 130 for it to work
//DieselHandler.removeFuel(<liquid:fuel>);
DieselHandler.removeFuel(<liquid:diesel>);
DieselHandler.addFuel(<liquid:diesel>, 130);
DieselHandler.addFuel(<liquid:kerosene>, 130);
DieselHandler.addDrillFuel(<liquid:gasoline>);

//Immersive Technology things
//Turbine processs buckets/tick to give larger expansion ratio
SteamTurbine.addFuel(<liquid:exhauststeam> * 1000, <liquid:steam> * 1000, 1);
HighPressureSteamTurbine.addFuel(<liquid:steam> * 2000, <liquid:highpressuresteam> * 1000, 1);

//Gas Turbine fuels to IRL energy ratios
GasTurbine.addFuel(<liquid:fluegas> * 1000, <liquid:refinerygas> * 220, 10);
GasTurbine.addFuel(<liquid:fluegas> * 1000, <liquid:methane> * 220, 10);
GasTurbine.addFuel(<liquid:fluegas> * 1000, <liquid:gasoline> * 160, 10);
GasTurbine.addFuel(<liquid:fluegas> * 1000, <liquid:naphtha> * 160, 10);
GasTurbine.addFuel(<liquid:fluegas> * 1000, <liquid:kerosene> * 150, 10);
GasTurbine.addFuel(<liquid:fluegas> * 1000, <liquid:diesel> * 130, 10);
GasTurbine.addFuel(<liquid:fluegas> * 1000, <liquid:biodiesel> * 160, 10);
GasTurbine.addFuel(<liquid:fluegas> * 1000, <liquid:ethanol> * 240, 10);
GasTurbine.addFuel(<liquid:fluegas> * 1000, <liquid:liquidethene> * 180, 10);
GasTurbine.addFuel(<liquid:fluegas> * 1000, <liquid:liquidhydrogen> * 850, 10);

//Make Distilled Water much more worth it
Distiller.removeRecipe(<liquid:water>);
Distiller.addRecipe(<liquid:distwater> * 900, <liquid:water> * 1000, <immersivetech:material>, 10000, 200, 0.009999999776482582);
Distiller.addRecipe(<liquid:water> * 1000, <liquid:saltwater> * 1000, <immersivetech:material>, 10000, 200, 0.009999999776482582);

//Boilers & solar tower make 10x the steam to compenstate
//Boiler
Boiler.addRecipe(<liquid:steam> * 4500, <liquid:water> * 250, 10);
Boiler.addRecipe(<liquid:steam> * 5000, <liquid:distwater> * 250, 10);
//Solar tower
SolarTower.addRecipe(<liquid:steam> * 4500, <liquid:water> * 250, 20);
SolarTower.addRecipe(<liquid:steam> * 5000, <liquid:distwater> * 250, 20);


//Add Boiler Fuels
Boiler.addFuel(<liquid:refinerygas> * 140, 10, 10);
Boiler.addFuel(<liquid:methane> * 140, 10, 10);
Boiler.addFuel(<liquid:gasoline> * 100, 10, 10);
Boiler.addFuel(<liquid:naphtha> * 100, 10, 10);
Boiler.addFuel(<liquid:kerosene> * 90, 10, 10);
Boiler.addFuel(<liquid:diesel> * 80, 10, 10);
Boiler.addFuel(<liquid:biodiesel> * 100, 10, 10);
Boiler.addFuel(<liquid:ethanol> * 150, 10, 10);
Boiler.addFuel(<liquid:liquidethene> * 110, 10, 10);
Boiler.addFuel(<liquid:liquidhydrogen> * 530, 10, 10);
Boiler.addFuel(<liquid:creosote> * 80, 10, 10);

//Heat Exchanger recipes
HeatExchanger.addRecipe(<liquid:steam> * 4500, null, <liquid:water> * 250, <liquid:fluegas> * 1000, 320, 10);
HeatExchanger.addRecipe(<liquid:steam> * 5000, null, <liquid:distwater> * 250, <liquid:fluegas> * 1000, 320, 10);
HeatExchanger.addRecipe(<liquid:steam> * 4500, <liquid:pahoehoelava> * 400, <liquid:water> * 250, <liquid:lava> * 400, 320, 10);
HeatExchanger.addRecipe(<liquid:steam> * 5000, <liquid:pahoehoelava> * 400, <liquid:distwater> * 250, <liquid:lava> * 400, 320, 10);
HeatExchanger.addRecipe(<liquid:highpressuresteam> * 4500, <liquid:distwater> * 1000, <liquid:water> * 500, <liquid:superheatedwater> * 1000, 320, 10);
HeatExchanger.addRecipe(<liquid:highpressuresteam> * 5000, <liquid:distwater> * 1000, <liquid:distwater> * 500, <liquid:superheatedwater> * 1000, 320, 10);
HeatExchanger.addRecipe(<liquid:distwater> * 250, <liquid:hot_spring_water> * 4500, <liquid:exhauststeam> * 5000, <liquid:water> * 4500, 160, 5);

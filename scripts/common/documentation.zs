//Imports
import mods.jei.JEI.addDescription;
import crafttweaker.item.IItemStack;

//Fusion Reactor pieces description & explanation
addDescription(<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:fusion_reactor_3_toroid"}), "The Fusion Reactor Toroid is the main reaction vessel of the fusion reactor, they contain the reacting plasmas within their powerful magnetic fields. Because of the enormous magnetic fields required, their superconducting electromagnets must be cooled to extreme temperatures, necessitating more powerful coolants than other devices. The magnetic fields require precise control, and as such the main computing power of the reactor is housed within the toroid control systems. Without injectors, extractors, or irradiation chambers, however, the toroid cannot function and will simply be a waste of power and coolant.");
addDescription(<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:fusion_reactor_5_toroid"}), "The Fusion Reactor Toroid is the main reaction vessel of the fusion reactor, they contain the reacting plasmas within their powerful magnetic fields. Because of the enormous magnetic fields required, their superconducting electromagnets must be cooled to extreme temperatures, necessitating more powerful coolants than other devices. The magnetic fields require precise control, and as such the main computing power of the reactor is housed within the toroid control systems. Without injectors, extractors, or irradiation chambers, however, the toroid cannot function and will simply be a waste of power and coolant.");
addDescription(<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:fusion_reactor_7_toroid"}), "The Fusion Reactor Toroid is the main reaction vessel of the fusion reactor, they contain the reacting plasmas within their powerful magnetic fields. Because of the enormous magnetic fields required, their superconducting electromagnets must be cooled to extreme temperatures, necessitating more powerful coolants than other devices. The magnetic fields require precise control, and as such the main computing power of the reactor is housed within the toroid control systems. Without injectors, extractors, or irradiation chambers, however, the toroid cannot function and will simply be a waste of power and coolant.");
addDescription(<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:fusion_reactor_3_heat_exchanger"}), "Heat Exchangers allow access to the internal high-throughput piping in the toroid shells, allowing one to move supercritical water through at high pressure to wick heat away from the casing, allowing power production from the reactor systems. While the reactor can function without this and in that case is generally a hotter, glorified fusor, the products of the reactor are produced so slowly it's reccomended to get them from other, easier routes and to use fusion reactors and the corresponding heat exchangers in tandem to produce power.");
addDescription(<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:fusion_reactor_5_heat_exchanger"}), "Heat Exchangers allow access to the internal high-throughput piping in the toroid shells, allowing one to move supercritical water through at high pressure to wick heat away from the casing, allowing power production from the reactor systems. While the reactor can function without this and in that case is generally a hotter, glorified fusor, the products of the reactor are produced so slowly it's reccomended to get them from other, easier routes and to use fusion reactors and the corresponding heat exchangers in tandem to produce power.");
addDescription(<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:fusion_reactor_7_heat_exchanger"}), "Heat Exchangers allow access to the internal high-throughput piping in the toroid shells, allowing one to move supercritical water through at high pressure to wick heat away from the casing, allowing power production from the reactor systems. While the reactor can function without this and in that case is generally a hotter, glorified fusor, the products of the reactor are produced so slowly it's reccomended to get them from other, easier routes and to use fusion reactors and the corresponding heat exchangers in tandem to produce power.");
addDescription(<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:fusion_reactor_plasma_heater"}), "Fusion Plasma Heaters input the energy required to start a fusion reaction, and are part of a combined system with the fuel injector to turn gasses into plasma for the reactor. They require a large amount of energy to heat up the first plasma charge to enter the chamber to toroid the reaction, but after the reaction starts, the power to heat the plasma introduced is provided by the plasma already in the toroid. The initial charge is 16 times the amount normally injected and so requires more heat than might be otherwise could be expected. After the heater reaches operational temperature, it only ionizes gasses instead of heating the plasma to the operational temperature, amounting to a large reduction in power use. They can heat up to different temperatures depending upon the coils they have inside of them, but they will always heat up to their maximum temperature, so it's reccomended to match the reaction the temperature you want so your startup does not reduce efficiency by overheating the plasma. When they are at operational temperature, they send a signal to the injector they are a part of and that injector turns on, starting the consumption of fusion fuel.");
addDescription(<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:fusion_reactor_injector"}), "Fusion Fuel Injectors are how the fuel for the reaction gets heated, ionized into plasma, and put into the magnetic field inside the toroid. They reqiure power to keep the magnetic field inside of them stable, similar to the toroid, and will consume fusion fuel at a comparatively slow rate to match power output of the reactor. They have an integrated Fusion Plasma Heater that heats the plasma, and will not function without the heater at its optimal operational temperature. They will not consume fuel if they cannot heat the fuel, but once the plasma is hot enough they will introduce it to where the toroid should be, regardless of there being a toroid there or not. Because the plasma is relatively rarified and high energy, this results in harmless dissipation if there is not a toroid and its corresponding magnetic field to contain the plasma. Because of the small size of the size 3 fusion reactor, only the Deuterium-Tritium reaction can be used, and the injection is slightly less efficient.");
addDescription(<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:fusion_reactor_extractor_hd"}), "Fusion Product Extractors remove reaction products from the reaction mixture through a complicated process, then transfer most of their heat back into the plasma until they can be safely removed from their outputs. Depending upon the fuel, this requires different designs and processes, but all fusion reactions produce some form of higher mass product(s). Due to space constraints on the size 3 fusion reactor, the reaction products stay contained within the plasma until they dissipate and therefore cannot be collected. While it is possible to breed fusion fuels as a star does, it is generally easier and more profitable to acquire them from other natural sources.");
addDescription(<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:fusion_reactor_extractor_hhe3"}), "Fusion Product Extractors remove reaction products from the reaction mixture through a complicated process, then transfer most of their heat back into the plasma until they can be safely removed from their outputs. Depending upon the fuel, this requires different designs and processes, but all fusion reactions produce some form of higher mass product(s). Due to space constraints on the size 3 fusion reactor, the reaction products stay contained within the plasma until they dissipate and therefore cannot be collected. While it is possible to breed fusion fuels as a star does, it is generally easier and more profitable to acquire them from other natural sources.");
addDescription(<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:fusion_reactor_extractor_dd"}), "Fusion Product Extractors remove reaction products from the reaction mixture through a complicated process, then transfer most of their heat back into the plasma until they can be safely removed from their outputs. Depending upon the fuel, this requires different designs and processes, but all fusion reactions produce some form of higher mass product(s). Due to space constraints on the size 3 fusion reactor, the reaction products stay contained within the plasma until they dissipate and therefore cannot be collected. While it is possible to breed fusion fuels as a star does, it is generally easier and more profitable to acquire them from other natural sources.");
addDescription(<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:fusion_reactor_extractor_dt"}), "Fusion Product Extractors remove reaction products from the reaction mixture through a complicated process, then transfer most of their heat back into the plasma until they can be safely removed from their outputs. Depending upon the fuel, this requires different designs and processes, but all fusion reactions produce some form of higher mass product(s). Due to space constraints on the size 3 fusion reactor, the reaction products stay contained within the plasma until they dissipate and therefore cannot be collected. While it is possible to breed fusion fuels as a star does, it is generally easier and more profitable to acquire them from other natural sources.");
addDescription(<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:fusion_reactor_extractor_dhe3"}), "Fusion Product Extractors remove reaction products from the reaction mixture through a complicated process, then transfer most of their heat back into the plasma until they can be safely removed from their outputs. Depending upon the fuel, this requires different designs and processes, but all fusion reactions produce some form of higher mass product(s). Due to space constraints on the size 3 fusion reactor, the reaction products stay contained within the plasma until they dissipate and therefore cannot be collected. While it is possible to breed fusion fuels as a star does, it is generally easier and more profitable to acquire them from other natural sources.");
addDescription(<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:fusion_reactor_extractor_tt"}), "Fusion Product Extractors remove reaction products from the reaction mixture through a complicated process, then transfer most of their heat back into the plasma until they can be safely removed from their outputs. Depending upon the fuel, this requires different designs and processes, but all fusion reactions produce some form of higher mass product(s). Due to space constraints on the size 3 fusion reactor, the reaction products stay contained within the plasma until they dissipate and therefore cannot be collected. While it is possible to breed fusion fuels as a star does, it is generally easier and more profitable to acquire them from other natural sources.");
addDescription(<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:fusion_reactor_extractor_the3"}), "Fusion Product Extractors remove reaction products from the reaction mixture through a complicated process, then transfer most of their heat back into the plasma until they can be safely removed from their outputs. Depending upon the fuel, this requires different designs and processes, but all fusion reactions produce some form of higher mass product(s). Due to space constraints on the size 3 fusion reactor, the reaction products stay contained within the plasma until they dissipate and therefore cannot be collected. While it is possible to breed fusion fuels as a star does, it is generally easier and more profitable to acquire them from other natural sources.");
addDescription(<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:fusion_reactor_extractor_he3he3"}), "Fusion Product Extractors remove reaction products from the reaction mixture through a complicated process, then transfer most of their heat back into the plasma until they can be safely removed from their outputs. Depending upon the fuel, this requires different designs and processes, but all fusion reactions produce some form of higher mass product(s). Due to space constraints on the size 3 fusion reactor, the reaction products stay contained within the plasma until they dissipate and therefore cannot be collected. While it is possible to breed fusion fuels as a star does, it is generally easier and more profitable to acquire them from other natural sources.");


//Fusion Fuels description
addDescription(<liquid:liquidhydrogen>, [
"Fuel  Ticktime  Product  Ignition",
"H-D       | 85    He3      3,6GK",
"H-He3    | 290   He4     10GK",
"D-D       | 51    H&T      10GK",
"D-T       | 270   He4      0,8GK",
"D-He3    | 282   H&He4   8GK",
"T-T       | 174   He4      10GK",
"T-He3    | 221   D&He4   12,3GK",
"He3-He3 | 199   2H&He4  17,5GK"]);
addDescription(<liquid:liquiddeuterium>, [
"Fuel  Ticktime  Product  Ignition",
"H-D       | 85    He3      3,6GK",
"H-He3    | 290   He4     10GK",
"D-D       | 51    H&T      10GK",
"D-T       | 270   He4      0,8GK",
"D-He3    | 282   H&He4   8GK",
"T-T       | 174   He4      10GK",
"T-He3    | 221   D&He4   12,3GK",
"He3-He3 | 199   2H&He4  17,5GK"]);
addDescription(<liquid:liquidtritium>, [
"Fuel  Ticktime  Product  Ignition",
"H-D       | 85    He3      3,6GK",
"H-He3    | 290   He4     10GK",
"D-D       | 51    H&T      10GK",
"D-T       | 270   He4      0,8GK",
"D-He3    | 282   H&He4   8GK",
"T-T       | 174   He4      10GK",
"T-He3    | 221   D&He4   12,3GK",
"He3-He3 | 199   2H&He4  17,5GK"]);
addDescription(<liquid:helium3>, [
"Fuel  Ticktime  Product  Ignition",
"H-D       | 85    He3      3,6GK",
"H-He3    | 290   He4     10GK",
"D-D       | 51    H&T      10GK",
"D-T       | 270   He4      0,8GK",
"D-He3    | 282   H&He4   8GK",
"T-T       | 174   He4      10GK",
"T-He3    | 221   D&He4   12,3GK",
"He3-He3 | 199   2H&He4  17,5GK"]);


//Diamond tools & armor description
var diamondTools = [<minecraft:diamond_hoe>,
                    <minecraft:diamond_sword>,
                    <minecraft:diamond_shovel>,
                    <minecraft:diamond_pickaxe>,
                    <minecraft:diamond_axe>,
                    <minecraft:diamond_helmet>,
                    <minecraft:diamond_chestplate>,
                    <minecraft:diamond_leggings>,
                    <minecraft:diamond_boots>
                    ] as IItemStack[];
for item in diamondTools {
    addDescription(item, "This tool or armor piece has been carved from a single, large diamond gem. You're not sure how it was made, or how those whom you took it from came into possession of it. You know, however, that you have no hope of replicating it.");
}

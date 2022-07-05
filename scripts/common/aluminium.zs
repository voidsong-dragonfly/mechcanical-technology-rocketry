///Combined vars
var plates = <ore:plateAluminum> | <ore:plateNickel> | <ore:plateIron>;
var ingots = <ore:ingotAluminum> | <ore:ingotNickel> | <ore:ingotIron>;
var sticks = <ore:stickAluminum> | <ore:stickNickel> | <ore:stickIron>;

//Remove recipes we don't want
//Minecraft recipes
recipes.remove(<minecraft:piston>);
recipes.remove(<minecraft:hopper>);
//Immersive engineering blocks
recipes.remove(<immersiveengineering:metal_decoration0:0>);
recipes.remove(<immersiveengineering:metal_decoration0:1>);
recipes.remove(<immersiveengineering:metal_decoration0:2>);
recipes.remove(<immersiveengineering:metal_decoration0:3> * 2);
recipes.remove(<immersiveengineering:metal_decoration0:4> * 2);
//Immersive engineering conveyors & routing
recipes.remove(<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:conveyor"}) * 8);
recipes.remove(<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:conveyor"}) * 4);
recipes.remove(<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:conveyor"}) * 8);
recipes.remove(<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:splitter"}));
recipes.remove(<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:vertical"}) * 3);
recipes.remove(<immersiveengineering:wooden_device0:3>);
recipes.remove(<immersiveengineering:wooden_device0:7>);
//Immersive engineering wiring
recipes.remove(<immersiveengineering:connector:7>);
recipes.remove(<immersiveengineering:connector:8>);
recipes.remove(<immersiveengineering:connector:10>);
recipes.remove(<immersiveengineering:connector:11>);
recipes.remove(<alternatingflux:connector:1>);
recipes.remove(<immersiveengineering:metal_device0:5>);
recipes.remove(<immersiveengineering:metal_device1:6> * 8);
recipes.remove(<immersiveengineering:metal_device0:6>);
//Immersive engineering devices
recipes.remove(<immersiveengineering:wooden_device0:6>);
recipes.remove(<immersiveengineering:metal_device1:9>);
recipes.remove(<immersiveengineering:metal_device1:2>);
recipes.remove(<immersiveengineering:metal_device1:5>);
recipes.remove(<immersiveengineering:metal_device1:1>);
recipes.remove(<engineersdecor:factory_hopper>);
recipes.remove(<engineersdecor:factory_dropper>);
recipes.remove(<engineersdecor:factory_placer>);
recipes.remove(<engineersdecor:small_waste_incinerator>);
recipes.remove(<immersiveengineering:metal_device1:4> * 3);
recipes.remove(<immersiveengineering:wooden_device0:5>);
recipes.remove(<immersivepetroleum:metal_device:1>);
recipes.remove(<immersivetech:valve:0> * 2);
recipes.remove(<immersivetech:valve:1> * 2);
recipes.remove(<immersivetech:valve:2> * 2);
recipes.remove(<immersivetech:metal_trash:0>);
recipes.remove(<immersivetech:metal_trash:1>);
recipes.remove(<immersivetech:metal_trash:2>);

//Add aluminium and nickel as an alternative to iron in many recipes
//Minecraft recipes
recipes.addShaped(<minecraft:piston>,
 [[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>],
 [<ore:cobblestone>, ingots, <ore:cobblestone>],
 [<ore:cobblestone>, <ore:dustRedstone>, <ore:cobblestone>]]);
recipes.addShaped(<minecraft:hopper>, 
 [[ingots, null, ingots],
 [ingots, <ore:chestWood>, ingots],
 [null, ingots, null]]);
//Immersive engineering blocks
recipes.addShaped(<immersiveengineering:metal_decoration0:0>, 
 [[<immersiveengineering:wirecoil:0>, <immersiveengineering:wirecoil:0>, <immersiveengineering:wirecoil:0>],
 [<immersiveengineering:wirecoil:0>, ingots, <immersiveengineering:wirecoil:0>],
 [<immersiveengineering:wirecoil:0>, <immersiveengineering:wirecoil:0>, <immersiveengineering:wirecoil:0>]]);
recipes.addShaped(<immersiveengineering:metal_decoration0:1>, 
 [[<immersiveengineering:wirecoil:1>, <immersiveengineering:wirecoil:1>, <immersiveengineering:wirecoil:1>],
 [<immersiveengineering:wirecoil:1>, ingots, <immersiveengineering:wirecoil:1>],
 [<immersiveengineering:wirecoil:1>, <immersiveengineering:wirecoil:1>, <immersiveengineering:wirecoil:1>]]);
recipes.addShaped(<immersiveengineering:metal_decoration0:2>, 
 [[<immersiveengineering:wirecoil:2>, <immersiveengineering:wirecoil:2>, <immersiveengineering:wirecoil:2>],
 [<immersiveengineering:wirecoil:2>, ingots, <immersiveengineering:wirecoil:2>],
 [<immersiveengineering:wirecoil:2>, <immersiveengineering:wirecoil:2>, <immersiveengineering:wirecoil:2>]]);
recipes.addShaped(<immersiveengineering:metal_decoration0:3> * 2,
 [[ingots, <ore:dustRedstone>, ingots],
 [<ore:dustRedstone>, <ore:ingotCopper>, <ore:dustRedstone>],
 [ingots, <ore:dustRedstone>, ingots]]);
recipes.addShaped(<immersiveengineering:metal_decoration0:4> * 2,
 [[ingots, <immersiveengineering:material:8>, ingots],
 [<ore:ingotCopper>, <ore:ingotCopper>, <ore:ingotCopper>],
 [ingots, <immersiveengineering:material:8>, ingots]]);
//Immersive engineering conveyors & routing
recipes.addShaped(<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:conveyor"}) * 4, 
 [[<ore:fabricHemp>, <ore:fabricHemp>,<ore:fabricHemp>],
 [ingots, <ore:dustRedstone>, ingots]]);
recipes.addShaped(<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:conveyor"}) * 8, 
 [[<mekanism:polyethene:2> | <ore:leatherSheet>, <mekanism:polyethene:2> | <ore:leatherSheet>,<mekanism:polyethene:2> | <ore:leatherSheet>],
 [ingots, <ore:dustRedstone>, ingots]]);
recipes.addShaped(<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:splitter"}),
 [[<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:conveyor"}), ingots, <immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:conveyor"})],
 [null, <immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:conveyor"}), null]]);
recipes.addShaped(<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:vertical"}) * 3, 
 [[<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:conveyor"}), ingots],
 [<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:conveyor"}), null],
 [<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:conveyor"}), ingots]]);
recipes.addShaped(<immersiveengineering:wooden_device0:3>,
 [[<ore:plankTreatedWood>, <ore:dustRedstone>, <ore:plankTreatedWood>],
 [ingots, <immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:conveyor"}), ingots],
 [<ore:plankTreatedWood>, <immersiveengineering:material:8>, <ore:plankTreatedWood>]]);
recipes.addShaped(<immersiveengineering:wooden_device0:7>,
 [[<ore:plankTreatedWood>, <ore:dustRedstone>, <ore:plankTreatedWood>],
 [ingots, <immersiveengineering:metal_device1:6>, ingots],
 [<ore:plankTreatedWood>, <immersiveengineering:material:8>, <ore:plankTreatedWood>]]);
//Immersive engineering wiring
recipes.addShaped(<immersiveengineering:connector:7>,
 [[<immersiveengineering:connector:0>, null, <immersiveengineering:connector:2>],
 [ingots, <immersiveengineering:metal_decoration0:1>, ingots],
 [ingots, ingots, ingots]]);
recipes.addShaped(<immersiveengineering:connector:8>,
 [[<immersiveengineering:connector:2>, null, <immersiveengineering:connector:4>],
 [ingots, <immersiveengineering:metal_decoration0:2>, ingots],
 [ingots, ingots, ingots]]);
recipes.addShaped(<immersiveengineering:connector:10>,
 [[<immersiveengineering:connector:4>, null, <immersiveengineering:connector:4>],
 [ingots, <minecraft:repeater>, ingots],
 [ingots, <ore:dustRedstone>, ingots]]);
recipes.addShaped(<immersiveengineering:connector:11>,
 [[null, <immersiveengineering:tool:2>, null],
 [<minecraft:hardened_clay>, <immersiveengineering:metal_decoration0:0>, <minecraft:hardened_clay>],
 [ingots, <immersiveengineering:metal_decoration0:0>, ingots]]);
recipes.addShaped(<alternatingflux:connector:1>,
 [[<immersiveengineering:connector:4>, null, <alternatingflux:connector:0>],
 [<ore:ingotAnnealedCopper>, <immersiveengineering:metal_decoration0:2>, <ore:ingotAnnealedCopper>],
 [ingots, ingots, ingots]]);
recipes.addShaped(<immersiveengineering:metal_device0:5>,
 [[null, plates, null],
 [plates, <immersiveengineering:material:8>, plates],
 [<immersiveengineering:metal_device1:6>, <immersiveengineering:metal_device1:6>, <immersiveengineering:metal_device1:6>]]);
recipes.addShaped(<immersiveengineering:metal_device1:6> * 8, 
 [[plates, plates, plates],
 [null, null, null],
 [plates, plates, plates]]);
recipes.addShaped(<immersiveengineering:metal_device0:6>,
 [[plates, <ore:barsIron>, plates],
 [<ore:barsIron>, null, <ore:barsIron>],
 [plates, <ore:barsIron>, plates]]);
//Immersive engineering devices
recipes.addShaped(<immersiveengineering:wooden_device0:6>,
 [[<ore:plankTreatedWood>, ingots, <ore:plankTreatedWood>],
 [<ore:dustRedstone>, <immersiveengineering:metal_decoration0:0>, <ore:dustRedstone>]]);
recipes.addShaped(<immersiveengineering:metal_device1:9>,
 [[ingots, ingots, ingots],
 [<ore:paneGlass>, <ore:electronTube>, <immersiveengineering:metal_decoration0:0>],
 [ingots, <immersiveengineering:material:8>, ingots]]);
recipes.addShaped(<immersiveengineering:metal_device1:2>,
 [[<ore:dustRedstone>, <immersiveengineering:metal_decoration0:0>, <ore:dustRedstone>],
 [ingots, ingots, ingots]]);
recipes.addShaped(<immersiveengineering:metal_device1:5>,
 [[ingots, <immersiveengineering:connector:2>, ingots],
 [<ore:blockGlass>, <ore:blockGlass>, <ore:blockGlass>],
 [<ore:plankTreatedWood>, <immersiveengineering:metal_decoration0:0>, <ore:plankTreatedWood>]]);
recipes.addShaped(<immersiveengineering:metal_device1:1>,
 [[ingots, <ore:ingotCopper>, ingots],
 [<ore:ingotCopper>, <immersiveengineering:metal_decoration0:0>, <ore:ingotCopper>],
 [ingots, <ore:dustRedstone>, ingots]]);
recipes.addShaped(<engineersdecor:factory_hopper>, 
 [[<ore:plankTreatedWood>, <ore:plankTreatedWood>, <ore:plankTreatedWood>],
 [<ore:plankTreatedWood>, <minecraft:hopper>, <ore:plankTreatedWood>],
 [<ore:plankTreatedWood>, plates, <ore:plankTreatedWood>]]);
recipes.addShaped(<engineersdecor:factory_dropper>, 
 [[<ore:plankTreatedWood>, <ore:plankTreatedWood>, <ore:plankTreatedWood>],
 [<ore:plankTreatedWood>, <minecraft:dropper>, <ore:plankTreatedWood>],
 [<ore:plankTreatedWood>, plates, <ore:plankTreatedWood>]]);
recipes.addShaped(<engineersdecor:factory_placer>, 
 [[<ore:plankTreatedWood>, <ore:plankTreatedWood>, <ore:plankTreatedWood>],
 [<ore:plankTreatedWood>, <minecraft:dispenser>, plates],
 [<ore:plankTreatedWood>, <ore:plankTreatedWood>, <ore:plankTreatedWood>]]);
recipes.addShaped(<engineersdecor:small_waste_incinerator>,
 [[<minecraft:hopper>, plates, plates],
 [plates, <minecraft:hopper>, plates],
 [plates, <minecraft:lava_bucket>, plates]]);
recipes.addShaped(<immersiveengineering:metal_device1:4> * 3, 
 [[null, plates, null],
 [<ore:paneGlass>, <ore:electronTube>, <ore:paneGlass>],
 [plates, <ore:dustRedstone>, plates]]);
recipes.addShaped(<immersiveengineering:wooden_device0:5>, 
 [[<ore:plankTreatedWood>, plates, <ore:plankTreatedWood>],
 [sticks, <immersiveengineering:wooden_device0:0>, sticks],
 [<ore:plankTreatedWood>, plates, <ore:plankTreatedWood>]]);
recipes.addShaped(<immersivepetroleum:metal_device:1>,
 [[plates, plates, plates],
 [plates, <immersiveengineering:metal_decoration0:6>, <immersiveengineering:metal_device0:0>],
 [plates, plates, plates]]);
recipes.addShaped(<immersivetech:valve:0> * 2,
 [[plates, <immersiveengineering:connector:12>, plates],
 [<immersiveengineering:metal_device1:6>, <immersiveengineering:material:8>, <immersiveengineering:metal_device1:6>],
 [plates, <immersiveengineering:material:27>, plates]]);
recipes.addShaped(<immersivetech:valve:1> * 2,
 [[plates, <immersiveengineering:connector:12>, plates],
 [<immersiveengineering:connector:4>, <immersiveengineering:material:8>, <immersiveengineering:connector:4>],
 [plates, <immersiveengineering:material:27>, plates]]);
recipes.addShaped(<immersivetech:valve:2> * 2,
 [[plates, <immersiveengineering:connector:12>, plates],
 [<immersiveengineering:conveyor>, <immersiveengineering:material:8>, <immersiveengineering:conveyor>],
 [plates, <immersiveengineering:material:27>, plates]]);
recipes.addShaped(<immersivetech:metal_trash:0>,
 [[plates, plates, plates],
 [plates, <ore:chestWood>, plates],
 [null, <ore:blockSheetmetalAluminum> | <ore:blockSheetmetalIron> | <ore:blockSheetmetalNickel>, null]]);
recipes.addShaped(<immersivetech:metal_trash:1>,
 [[plates, plates, plates],
 [plates, <immersiveengineering:metal_device0:4>, plates],
 [null, <ore:blockSheetmetalAluminum> | <ore:blockSheetmetalIron> | <ore:blockSheetmetalNickel>, null]]);
recipes.addShaped(<immersivetech:metal_trash:2>,
 [[plates, plates, plates],
 [plates, <immersiveengineering:metal_decoration0:2>, plates],
 [null, <ore:blockSheetmetalAluminum> | <ore:blockSheetmetalIron> | <ore:blockSheetmetalNickel>, null]]);

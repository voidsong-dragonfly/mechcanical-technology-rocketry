//Add aluminium as an alternative to iron in many recipes
//Minecraft recipes
recipes.addShaped(<minecraft:piston>, 
 [[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>],
 [<ore:cobblestone>, <ore:ingotAluminum>, <ore:cobblestone>],
 [<ore:cobblestone>, <ore:dustRedstone>, <ore:cobblestone>]]);
recipes.addShaped(<minecraft:hopper>, 
 [[<ore:ingotAluminum>, null, <ore:ingotAluminum>],
 [<ore:ingotAluminum>, <ore:chestWood>, <ore:ingotAluminum>],
 [null, <ore:ingotAluminum>, null]]);
//Immersive engineering blocks
recipes.addShaped(<immersiveengineering:metal_decoration0:0>, 
 [[<immersiveengineering:wirecoil:0>, <immersiveengineering:wirecoil:0>, <immersiveengineering:wirecoil:0>],
 [<immersiveengineering:wirecoil:0>, <ore:ingotAluminum>, <immersiveengineering:wirecoil:0>],
 [<immersiveengineering:wirecoil:0>, <immersiveengineering:wirecoil:0>, <immersiveengineering:wirecoil:0>]]);
recipes.addShaped(<immersiveengineering:metal_decoration0:1>, 
 [[<immersiveengineering:wirecoil:1>, <immersiveengineering:wirecoil:1>, <immersiveengineering:wirecoil:1>],
 [<immersiveengineering:wirecoil:1>, <ore:ingotAluminum>, <immersiveengineering:wirecoil:1>],
 [<immersiveengineering:wirecoil:1>, <immersiveengineering:wirecoil:1>, <immersiveengineering:wirecoil:1>]]);
recipes.addShaped(<immersiveengineering:metal_decoration0:2>, 
 [[<immersiveengineering:wirecoil:2>, <immersiveengineering:wirecoil:2>, <immersiveengineering:wirecoil:2>],
 [<immersiveengineering:wirecoil:2>, <ore:ingotAluminum>, <immersiveengineering:wirecoil:2>],
 [<immersiveengineering:wirecoil:2>, <immersiveengineering:wirecoil:2>, <immersiveengineering:wirecoil:2>]]);
recipes.addShaped(<immersiveengineering:metal_decoration0:3> * 2,
 [[<ore:ingotAluminum>, <ore:dustRedstone>, <ore:ingotAluminum>],
 [<ore:dustRedstone>, <ore:ingotCopper>, <ore:dustRedstone>],
 [<ore:ingotAluminum>, <ore:dustRedstone>, <ore:ingotAluminum>]]);
recipes.addShaped(<immersiveengineering:metal_decoration0:4> * 2,
 [[<ore:ingotAluminum>, <immersiveengineering:material:8>, <ore:ingotAluminum>],
 [<ore:ingotCopper>, <ore:ingotCopper>, <ore:ingotCopper>],
 [<ore:ingotAluminum>, <immersiveengineering:material:8>, <ore:ingotAluminum>]]);
//Immersive engineering conveyors & routing
recipes.addShaped(<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:conveyor"}) * 8, 
 [[<ore:leatherSheet>, <ore:leatherSheet>,<ore:leatherSheet>],
 [<ore:ingotAluminum>, <ore:dustRedstone>, <ore:ingotAluminum>]]);
recipes.addShaped(<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:conveyor"}) * 4, 
 [[<ore:fabricHemp>, <ore:fabricHemp>,<ore:fabricHemp>],
 [<ore:ingotAluminum>, <ore:dustRedstone>, <ore:ingotAluminum>]]);
recipes.addShaped(<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:conveyor"}) * 8, 
 [[<mekanism:polyethene:2>, <mekanism:polyethene:2>,<mekanism:polyethene:2>],
 [<ore:ingotAluminum>, <ore:dustRedstone>, <ore:ingotAluminum>]]);
recipes.addShaped(<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:splitter"}),
 [[<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:conveyor"}), <ore:ingotAluminum>, <immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:conveyor"})],
 [null, <immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:conveyor"}), null]]);
recipes.addShaped(<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:vertical"}) * 3, 
 [[<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:conveyor"}), <ore:ingotAluminum>],
 [<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:conveyor"}), null],
 [<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:conveyor"}), <ore:ingotAluminum>]]);
recipes.addShaped(<immersiveengineering:wooden_device0:3>,
 [[<ore:plankTreatedWood>, <ore:dustRedstone>, <ore:plankTreatedWood>],
 [<ore:ingotAluminum>, <immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:conveyor"}), <ore:ingotAluminum>],
 [<ore:plankTreatedWood>, <immersiveengineering:material:8>, <ore:plankTreatedWood>]]);
recipes.addShaped(<immersiveengineering:wooden_device0:7>,
 [[<ore:plankTreatedWood>, <ore:dustRedstone>, <ore:plankTreatedWood>],
 [<ore:ingotAluminum>, <immersiveengineering:metal_device1:6>, <ore:ingotAluminum>],
 [<ore:plankTreatedWood>, <immersiveengineering:material:8>, <ore:plankTreatedWood>]]);
//Immersive engineering wiring
recipes.addShaped(<immersiveengineering:connector:7>,
 [[<immersiveengineering:connector:0>, null, <immersiveengineering:connector:2>],
 [<ore:ingotAluminum>, <immersiveengineering:metal_decoration0:1>, <ore:ingotAluminum>],
 [<ore:ingotAluminum>, <ore:ingotAluminum>, <ore:ingotAluminum>]]);
recipes.addShaped(<immersiveengineering:connector:8>,
 [[<immersiveengineering:connector:2>, null, <immersiveengineering:connector:4>],
 [<ore:ingotAluminum>, <immersiveengineering:metal_decoration0:2>, <ore:ingotAluminum>],
 [<ore:ingotAluminum>, <ore:ingotAluminum>, <ore:ingotAluminum>]]);
recipes.addShaped(<immersiveengineering:connector:10>,
 [[<immersiveengineering:connector:4>, null, <immersiveengineering:connector:4>],
 [<ore:ingotAluminum>, <minecraft:repeater>, <ore:ingotAluminum>],
 [<ore:ingotAluminum>, <ore:dustRedstone>, <ore:ingotAluminum>]]);
recipes.addShaped(<immersiveengineering:connector:11>,
 [[null, <immersiveengineering:tool:2>, null],
 [<minecraft:hardened_clay>, <immersiveengineering:metal_decoration0:0>, <minecraft:hardened_clay>],
 [<ore:ingotAluminum>, <immersiveengineering:metal_decoration0:0>, <ore:ingotAluminum>]]);
recipes.addShaped(<alternatingflux:connector:1>,
 [[<immersiveengineering:connector:4>, null, <alternatingflux:connector:0>],
 [<ore:ingotConstantan>, <immersiveengineering:metal_decoration0:2>, <ore:ingotConstantan>],
 [<ore:ingotAluminum>, <ore:ingotAluminum>, <ore:ingotAluminum>]]);
recipes.addShaped(<immersiveengineering:metal_device0:5>,
 [[null, <ore:plateAluminum>, null],
 [<ore:plateAluminum>, <immersiveengineering:material:8>, <ore:plateAluminum>],
 [<immersiveengineering:metal_device1:6>, <immersiveengineering:metal_device1:6>, <immersiveengineering:metal_device1:6>]]);
recipes.addShaped(<immersiveengineering:metal_device1:6> * 8, 
 [[<ore:plateAluminum>, <ore:plateAluminum>, <ore:plateAluminum>],
 [null, null, null],
 [<ore:plateAluminum>, <ore:plateAluminum>, <ore:plateAluminum>]]);
recipes.addShaped(<immersiveengineering:metal_device0:6>,
 [[<ore:plateAluminum>, <ore:barsIron>, <ore:plateAluminum>],
 [<ore:barsIron>, null, <ore:barsIron>],
 [<ore:plateAluminum>, <ore:barsIron>, <ore:plateAluminum>]]);
//Immersive engineering devices
recipes.addShaped(<immersiveengineering:wooden_device0:6>,
 [[<ore:plankTreatedWood>, <ore:ingotAluminum>, <ore:plankTreatedWood>],
 [<ore:dustRedstone>, <immersiveengineering:metal_decoration0:0>, <ore:dustRedstone>]]);
recipes.addShaped(<immersiveengineering:metal_device1:9>,
 [[<ore:ingotAluminum>, <ore:ingotAluminum>, <ore:ingotAluminum>],
 [<ore:paneGlass>, <ore:electronTube>, <immersiveengineering:metal_decoration0:0>],
 [<ore:ingotAluminum>, <immersiveengineering:material:8>, <ore:ingotAluminum>]]);
recipes.addShaped(<immersiveengineering:metal_device1:2>,
 [[<ore:dustRedstone>, <immersiveengineering:metal_decoration0:0>, <ore:dustRedstone>],
 [<ore:ingotAluminum>, <ore:ingotAluminum>, <ore:ingotAluminum>]]);
recipes.addShaped(<immersiveengineering:metal_device1:5>,
 [[<ore:ingotAluminum>, <immersiveengineering:connector:2>, <ore:ingotAluminum>],
 [<ore:blockGlass>, <ore:blockGlass>, <ore:blockGlass>],
 [<ore:plankTreatedWood>, <immersiveengineering:metal_decoration0:0>, <ore:plankTreatedWood>]]);
recipes.addShaped(<immersiveengineering:metal_device1:1>,
 [[<ore:ingotAluminum>, <ore:ingotCopper>, <ore:ingotAluminum>],
 [<ore:ingotCopper>, <immersiveengineering:metal_decoration0:0>, <ore:ingotCopper>],
 [<ore:ingotAluminum>, <ore:dustRedstone>, <ore:ingotAluminum>]]);
recipes.addShaped(<engineersdecor:factory_hopper>, 
 [[<ore:plankTreatedWood>, <ore:plankTreatedWood>, <ore:plankTreatedWood>],
 [<ore:plankTreatedWood>, <minecraft:hopper>, <ore:plankTreatedWood>],
 [<ore:plankTreatedWood>, <ore:plateAluminum>, <ore:plankTreatedWood>]]);
recipes.addShaped(<engineersdecor:factory_dropper>, 
 [[<ore:plankTreatedWood>, <ore:plankTreatedWood>, <ore:plankTreatedWood>],
 [<ore:plankTreatedWood>, <minecraft:dropper>, <ore:plankTreatedWood>],
 [<ore:plankTreatedWood>, <ore:plateAluminum>, <ore:plankTreatedWood>]]);
recipes.addShaped(<engineersdecor:factory_placer>, 
 [[<ore:plankTreatedWood>, <ore:plankTreatedWood>, <ore:plankTreatedWood>],
 [<ore:plankTreatedWood>, <minecraft:dispenser>, <ore:plateAluminum>],
 [<ore:plankTreatedWood>, <ore:plankTreatedWood>, <ore:plankTreatedWood>]]);
recipes.addShaped(<engineersdecor:small_waste_incinerator>,
 [[<minecraft:hopper>, <ore:plateAluminum>, <ore:plateAluminum>],
 [<ore:plateAluminum>, <minecraft:hopper>, <ore:plateAluminum>],
 [<ore:plateAluminum>, <minecraft:lava_bucket>, <ore:plateAluminum>]]);
recipes.addShaped(<immersiveengineering:metal_device1:4> * 3, 
 [[null, <ore:plateAluminum>, null],
 [<ore:paneGlass>, <ore:electronTube>, <ore:paneGlass>],
 [<ore:plateAluminum>, <ore:dustRedstone>, <ore:plateAluminum>]]);
recipes.addShaped(<immersiveengineering:wooden_device0:5>, 
 [[<ore:plankTreatedWood>, <ore:plateAluminum>, <ore:plankTreatedWood>],
 [<ore:stickAluminum>, <immersiveengineering:wooden_device0:0>, <ore:stickAluminum>],
 [<ore:plankTreatedWood>, <ore:plateAluminum>, <ore:plankTreatedWood>]]);
recipes.addShaped(<immersivepetroleum:metal_device:1>,
 [[<ore:plateAluminum>, <ore:plateAluminum>, <ore:plateAluminum>],
 [<ore:plateAluminum>, <immersiveengineering:metal_decoration0:6>, <immersiveengineering:metal_device0:0>],
 [<ore:plateAluminum>, <ore:plateAluminum>, <ore:plateAluminum>]]);
recipes.addShaped(<immersivetech:valve:0> * 2,
 [[<ore:plateAluminum>, <immersiveengineering:connector:12>, <ore:plateAluminum>],
 [<immersiveengineering:metal_device1:6>, <immersiveengineering:material:8>, <immersiveengineering:metal_device1:6>],
 [<ore:plateAluminum>, <immersiveengineering:material:27>, <ore:plateAluminum>]]);
recipes.addShaped(<immersivetech:valve:1> * 2,
 [[<ore:plateAluminum>, <immersiveengineering:connector:12>, <ore:plateAluminum>],
 [<immersiveengineering:connector:4>, <immersiveengineering:material:8>, <immersiveengineering:connector:4>],
 [<ore:plateAluminum>, <immersiveengineering:material:27>, <ore:plateAluminum>]]);
recipes.addShaped(<immersivetech:valve:2> * 2,
 [[<ore:plateAluminum>, <immersiveengineering:connector:12>, <ore:plateAluminum>],
 [<immersiveengineering:conveyor>, <immersiveengineering:material:8>, <immersiveengineering:conveyor>],
 [<ore:plateAluminum>, <immersiveengineering:material:27>, <ore:plateAluminum>]]);
recipes.addShaped(<immersivetech:metal_trash:0>,
 [[<ore:plateAluminum>, <ore:plateAluminum>, <ore:plateAluminum>],
 [<ore:plateAluminum>, <ore:chestWood>, <ore:plateAluminum>],
 [null, <ore:blockSheetmetalAluminum>, null]]);
recipes.addShaped(<immersivetech:metal_trash:1>,
 [[<ore:plateAluminum>, <ore:plateAluminum>, <ore:plateAluminum>],
 [<ore:plateAluminum>, <immersiveengineering:metal_device0:4>, <ore:plateAluminum>],
 [null, <ore:blockSheetmetalAluminum>, null]]);
recipes.addShaped(<immersivetech:metal_trash:2>,
 [[<ore:plateAluminum>, <ore:plateAluminum>, <ore:plateAluminum>],
 [<ore:plateAluminum>, <immersiveengineering:metal_decoration0:2>, <ore:plateAluminum>],
 [null, <ore:blockSheetmetalAluminum>, null]]);

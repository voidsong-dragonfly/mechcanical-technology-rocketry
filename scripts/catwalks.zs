//Make Blowtorch have a realistic recipe (Yes, it's more expensive, but meh)
recipes.remove(<catwalks:blowtorch>);
recipes.addShaped(<catwalks:blowtorch>,
 [[null, <immersiveengineering:toolupgrade>, <immersiveengineering:material:13>],
 [<ore:stickAluminum>, <immersivetech:metal_barrel:2>.withTag({tank: {FluidName: "kerosene", Amount: 24000}}), <immersiveengineering:material:13>],
 [<immersiveengineering:toolupgrade:7>, <minecraft:flint_and_steel>, null]]);

function SteamDetails()

    ModBase.SetSteamWorkshopDetails("I Have The Power!", "This mod adds a Power Bench", {"ExampleTag"}, "AutoDark.png")

end

function Creation()
    
    ModHoldable.CreateHoldable("Battery Seed", {"TreeSeed","UpgradeWorkerCarryCrude"}, {1,1})
    ModHoldable.CreateHoldable("Crude Spring", {"Pole","FixingPeg"}, {3,2})
    ModHoldable.CreateHoldable("Metal Spring", {"Crude Spring","MetalPoleCrude","Rivets"}, {1,2,2})
    ModHoldable.CreateHoldable("Plastic", {"Straw","SeaWater","Water"}, {4,2,2})
    ModHoldable.CreateHoldable("ClearPlastic", {"Plastic","Sand","Water"}, {1,3,1})
    ModConverter.CreateConverter("Metal Centrefuge", {"Rock","Clay"}, {"MetalPoleCrude","StoneBlockCrude","Wheel","Metal Spring","Rivets"}, {2,2,2,1,2})
    ModConverter.CreateConverter("Power Bench", {"Battery Seed","Crude Spring","Metal Spring","Plastic","ClearPlastic"}, {"UpgradeWorkerCarrySuper","IronCrude","Log"}, {1,2,2}, "Models/Buildings/Converters/BasicMetalWorkbench", {-1,-1}, {1,1}, {-1,2}, {1,2}, false)
    ModConverter.CreateConverter("Crude Centrefuge", {"Rock","Clay"}, {"Pole","Rock","WheelCrude","Crude Spring","FrameTriangle","FixingPeg"}, {2,2,2,1,2,2})

end

function BeforeLoad()

    ModVariable.AddRecipeToConverter("Power Bench", "Battery Seed", 1)
    ModVariable.AddRecipeToConverter("Power Bench", "Crude Spring", 1)
    ModVariable.AddRecipeToConverter("Power Bench", "Metal Spring", 1)
    ModVariable.AddRecipeToConverter("Power Bench", "Plastic", 1)
    ModVariable.SetIngredientsForRecipeSpecific("Crude Centrefuge", "Rock", {"StoneBlockCrude"}, {1}, 5)
    ModVariable.SetIngredientsForRecipeSpecific("Crude Centrefuge", "Clay", {"GnomeRaw"}, {1}, 2)
    ModVariable.SetIngredientsForRecipeSpecific("Metal Centrefuge", "Rock", {"StoneBlockCrude"}, {1}, 10)
    ModVariable.SetIngredientsForRecipeSpecific("Metal Centrefuge", "Clay", {"GnomeRaw"}, {1}, 4)
    -- ModVariable.SetIngredientsForRecipe("Rock", {"StoneBlockCrude"}, {1}, 10)
    -- ModVariable.SetIngredientsForRecipe("Clay", {"GnomeRaw"}, {1}, 4)
    ModVariable.SetVariableForBuildingUpgrade("Crude Centrefuge", "Metal Centrefuge")
    
end
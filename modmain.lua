-- Tag: clients need it so USEMAGICTOOL is offered.
-- Component: the server action fails with ACTIONFAIL_GENERIC without it.
AddPlayerPostInit(function(inst)
	inst:AddTag("magician")

	if not GLOBAL.TheWorld.ismastersim then
		return
	end

	if inst.components.magician == nil then
		inst:AddComponent("magician")
	end
end)

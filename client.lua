local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
vRP = Proxy.getInterface("vRP")
-----------------------------------------------------------------------------------------------------------------------------------------
-- CONNECTION
-----------------------------------------------------------------------------------------------------------------------------------------
src = Tunnel.getInterface("nike_arma")
-----------------------------------------------------------------------------------------------------------------------------------------
-- FUNCTION
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent('CloseNui')
AddEventHandler('CloseNui', function()
    SendNUIMessage({ hidemenu = true })
    SetNuiFocus(false, false)
end)

RegisterNUICallback('closeNUI', function(data, cb)
    if data.close == true then
        SetNuiFocus(false, false)
    end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- BUTTON
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNUICallback("ButtonClick",function(data,cb)
	if data == "five" then
		TriggerServerEvent("ProductionWeapon","five")
	elseif data == "tec9" then
		TriggerServerEvent("ProductionWeapon","tec9")
	elseif data == "mp5" then
		TriggerServerEvent("ProductionWeapon","mp5")
	elseif data == "g36c" then
		TriggerServerEvent("ProductionWeapon","g36c")
	elseif data == "ak47" then
		TriggerServerEvent("ProductionWeapon","ak47")
	elseif data == "fechar" then
		TriggerEvent("CloseNui")
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- TRABALHAR
-----------------------------------------------------------------------------------------------------------------------------------------
local marcacoes = {
	{ 1278.88, -1694.67, 49.91 },
	{ -1104.41, -1637.71, -1.0 }
}

RegisterCommand('farmas',function(source,args)
	for k,v in pairs(marcacoes) do
		local coords = vector3(v[1],v[2],v[3])
		local distance = #(GetEntityCoords(PlayerPedId()) - coords)
		if distance <= 3 then
			if src.checkPermissao() then
				SetNuiFocus(true,true)
				SendNUIMessage({ showmenu = true })
			else
				TriggerEvent("Notify","negado","Você não tem permissão para acessar o arsenal.")
			end
		end
	end
end)	

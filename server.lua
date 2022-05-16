local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
local Tools = module("vrp","lib/Tools")

vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP")
-----------------------------------------------------------------------------------------------------------------------------------------
-- CONNECTION
-----------------------------------------------------------------------------------------------------------------------------------------
src = {}
Tunnel.bindInterface("must_arma",src)
-----------------------------------------------------------------------------------------------------------------------------------------
-- PRODUCTION
-----------------------------------------------------------------------------------------------------------------------------------------
local armas = {
	{ item = "five" },
    { item = "tec9" },
    { item = "mp5" },
    { item = "g36c" },
    { item = "ak47" }
}
-----------------------------------------------------------------------------------------------------------------------------------------
-- MAIN MENU
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterServerEvent("ProductionWeapon")
AddEventHandler("ProductionWeapon",function(item)
	local source = source
	local user_id = vRP.getUserId(source)
	if user_id then
		for k,v in pairs(armas) do
            if item == v.item then
                if item == "five" then
                    if vRP.getInventoryWeight(user_id)+vRP.getItemWeight("wbody|WEAPON_PISTOL_MK2") <= vRP.getInventoryMaxWeight(user_id) then
                        if vRP.getInventoryItemAmount(user_id,"dinheirosujo") >= 30000 then
                                if vRP.tryGetInventoryItem(user_id,"pecadearma",90) and vRP.tryGetInventoryItem(user_id,"dinheirosujo",30000) then
                                TriggerClientEvent("CloseNui",source)
                                
                                TriggerClientEvent("progress",source,10000,"FABRICANDO")
                                TriggerClientEvent("cancelando",source,true)
                                vRPclient._playAnim(source,false,{{"amb@prop_human_parking_meter@female@idle_a","idle_a_female"}},true)
                                
                                SetTimeout(10000,function()
                                    TriggerClientEvent("cancelando",source,false)
                                    vRPclient._stopAnim(source,false)
                                    vRP.giveInventoryItem(user_id,"wbody|WEAPON_PISTOL_MK2",1)
                                end)
                            else
                                TriggerClientEvent("Notify",source,"negado","Você não tem <b>armacao</b> na mochila.")
                            end
                        else
                            TriggerClientEvent("Notify",source,"negado","Você precisa <b>dinheiro sujo</b>.")
                        end
                    else
                        TriggerClientEvent("Notify",source,"negado","Espaço insuficiente na mochila.")
                    end
                elseif item == "tec9" then
                    if vRP.getInventoryWeight(user_id)+vRP.getItemWeight("wbody|WEAPON_MACHINEPISTOL") <= vRP.getInventoryMaxWeight(user_id) then
                        if vRP.getInventoryItemAmount(user_id,"armacaodetec") >= 1 then
                            if vRP.getInventoryItemAmount(user_id,"dinheirosujo") >= 120000 then
                                if vRP.tryGetInventoryItem(user_id,"armacaodetec",1) and vRP.tryGetInventoryItem(user_id,"dinheirosujo",120000) then
                                    TriggerClientEvent("CloseNui",source)
                                    
                                    TriggerClientEvent("progress",source,10000,"FABRICANDO")
                                    TriggerClientEvent("cancelando",source,true)
                                    vRPclient._playAnim(source,false,{{"amb@prop_human_parking_meter@female@idle_a","idle_a_female"}},true)
                                    
                                    SetTimeout(10000,function()
                                        TriggerClientEvent("cancelando",source,false)
                                        vRPclient._stopAnim(source,false)
                                        vRP.giveInventoryItem(user_id,"wbody|WEAPON_MACHINEPISTOL",1)
                                    end)
                                end
                                else
                                    TriggerClientEvent("Notify",source,"negado","Você não tem <b>Dinheiro Sujo</b> na mochila.")
                                end
                            else
                                TriggerClientEvent("Notify",source,"negado","Você precisa <b>Armação de Arma</b>.")
                            end
                        else
                            TriggerClientEvent("Notify",source,"negado","Espaço insuficiente na mochila.")
                        end
                elseif item == "mp5" then
                    if vRP.getInventoryWeight(user_id)+vRP.getItemWeight("wbody|WEAPON_SMG_MK2") <= vRP.getInventoryMaxWeight(user_id) then
                        if vRP.getInventoryItemAmount(user_id,"armacaodemp5") >= 1 then
                            if vRP.getInventoryItemAmount(user_id,"dinheirosujo") >= 120000 then
                                if vRP.tryGetInventoryItem(user_id,"armacaodemp5",1) and vRP.tryGetInventoryItem(user_id,"dinheirosujo",120000) then
                                    TriggerClientEvent("CloseNui",source)

                                    TriggerClientEvent("progress",source,10000,"FABRICANDO")
                                    TriggerClientEvent("cancelando",source,true)
                                    vRPclient._playAnim(source,false,{{"amb@prop_human_parking_meter@female@idle_a","idle_a_female"}},true)

                                    SetTimeout(10000,function()
                                        TriggerClientEvent("cancelando",source,false)
                                        vRPclient._stopAnim(source,false)
                                        vRP.giveInventoryItem(user_id,"wbody|WEAPON_SMG_MK2",1)
                                    end)
                                end
                            else
                                TriggerClientEvent("Notify",source,"negado","Você não tem <b>Dinheiro Sujo</b> na mochila.")
                            end
                        else
                            TriggerClientEvent("Notify",source,"negado","Você precisa <b>Armação de Arma</b>.")
                        end
                    else
                        TriggerClientEvent("Notify",source,"negado","Espaço insuficiente na mochila.")
                    end
                elseif item == "g36c" then
                    if vRP.getInventoryWeight(user_id)+vRP.getItemWeight("wbody|WEAPON_SPECIALCARBINE_MK2") <= vRP.getInventoryMaxWeight(user_id) then
                        if vRP.getInventoryItemAmount(user_id,"armacaodeg3") >= 1 then
                            if vRP.getInventoryItemAmount(user_id,"dinheirosujo") >= 300000 then
                                if vRP.tryGetInventoryItem(user_id,"armacaodeg3",1) and vRP.tryGetInventoryItem(user_id,"dinheirosujo",300000) then
                                    TriggerClientEvent("CloseNui",source)
                                    
                                    TriggerClientEvent("progress",source,10000,"FABRICANDO")
                                    TriggerClientEvent("cancelando",source,true)
                                    vRPclient._playAnim(source,false,{{"amb@prop_human_parking_meter@female@idle_a","idle_a_female"}},true)
                                    
                                    SetTimeout(10000,function()
                                        TriggerClientEvent("cancelando",source,false)
                                        vRPclient._stopAnim(source,false)
                                        vRP.giveInventoryItem(user_id,"wbody|WEAPON_SPECIALCARBINE_MK2",1)
                                    end)
                                end
                            else
                                TriggerClientEvent("Notify",source,"negado","Você não tem <b>Dinheiro Sujo</b> na mochila.")
                            end
                        else
                            TriggerClientEvent("Notify",source,"negado","Você não tem <b>Armação de Arma</b> na mochila.")
                        end
                    else
                        TriggerClientEvent("Notify",source,"negado","Espaço insuficiente na mochila.")
                    end
                elseif item == "ak47" then
                    if vRP.getInventoryWeight(user_id)+vRP.getItemWeight("wbody|WEAPON_ASSAULTRIFLE_MK2") <= vRP.getInventoryMaxWeight(user_id) then
                        if vRP.getInventoryItemAmount(user_id,"armacaodeak") >= 1 then
                            if vRP.getInventoryItemAmount(user_id,"dinheirosujo") >= 250000 then
                                if vRP.tryGetInventoryItem(user_id,"armacaodeak",1) and vRP.tryGetInventoryItem(user_id,"dinheirosujo",250000) then
                                    TriggerClientEvent("CloseNui",source)
                
                                    TriggerClientEvent("progress",source,10000,"FABRICANDO")
                                    vRPclient._playAnim(source,false,{{"amb@prop_human_parking_meter@female@idle_a","idle_a_female"}},true)
                
                                    SetTimeout(10000,function()
                                        vRPclient._stopAnim(source,false)
                                        vRP.giveInventoryItem(user_id,"wbody|WEAPON_ASSAULTRIFLE_MK2",1)
                                    end)
                                end
                            else
                                TriggerClientEvent("Notify",source,"negado","Você não tem <b>Dinheiro Sujo</b> na mochila.")
                            end
                        else
                            TriggerClientEvent("Notify",source,"negado","Você precisa <b>Armação de Arma</b>.")
                        end
                    else
                        TriggerClientEvent("Notify",source,"negado","Espaço insuficiente na mochila.")
                    end
                end
            end
        end
    end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- CHECK PERMISSION
-----------------------------------------------------------------------------------------------------------------------------------------
function src.checkPermissao()
    local source = source
    local user_id = vRP.getUserId(source)
    if vRP.hasPermission(user_id,"bloods.permissao") or vRP.hasPermission(user_id,"crips.permissao") then
        return true
    end
end

local restrictedRoutings = {
    {dimensao = 1, permissao = "Admin"},
    {dimensao = 2, permissao = "Admin"},
}


RegisterCommand("mundo",function(source,args) 
    local user_id = vRP.getUserId(source)
    if user_id then
        for k,v in pairs(restrictedRoutings) do
            if tonumber(args[1]) and args[1] == v.dimensao then
                if vRP.hasPermission(user_id,v.permissao) then
                    TriggerClientEvent("Notify",source,"sucesso","Você foi para o mundo <b>"..args[1].."</b> !",2000)
                    SetPlayerRoutingBucket(source,(parseInt(args[1])))
                elseif tonumber(args[1]) and args[1] ~= v.dimensao then
                    TriggerClientEvent("Notify",source,"sucesso","Você foi para o mundo <b>"..args[1].."</b> !",2000)
                    SetPlayerRoutingBucket(source,(parseInt(args[1])))
                end
            end
        end
    end
end)

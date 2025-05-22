local QBCore = exports['qb-core']:GetCoreObject()

QBCore.Commands.Add('cash', 'Check Cash Balance', {}, false, function(source, _)
    local Player = QBCore.Functions.GetPlayer(source)
    local cashamount = Player.PlayerData.money.cash
    TriggerClientEvent('hud:client:ShowAccounts', source, 'cash', cashamount)
end)

QBCore.Commands.Add('crypto', 'Check Crypto Balance', {}, false, function(source, _)
    local Player = QBCore.Functions.GetPlayer(source)
    local cryptoamount = Player.PlayerData.money.crypto
    TriggerClientEvent('hud:client:ShowAccounts', source, 'crypto', cryptoamount)
end)

QBCore.Commands.Add('bank', 'Check Bank Balance', {}, false, function(source, _)
    local Player = QBCore.Functions.GetPlayer(source)
    local bankamount = Player.PlayerData.money.bank
    TriggerClientEvent('hud:client:ShowAccounts', source, 'bank', bankamount)
end)

QBCore.Commands.Add('coins', 'Check Coins Balance', {}, false, function(source, _)
    local Player = QBCore.Functions.GetPlayer(source)
    if Player.PlayerData.money.coins then 
        local coinsamount = Player.PlayerData.money.coins
        TriggerClientEvent('hud:client:ShowAccounts', source, 'coins', coinsamount)
    end
end)

-- QBCore.Commands.Add("dev", "Enable/Disable developer Mode", {}, false, function(source, _)
--     TriggerClientEvent("nf-admin:client:ToggleDevmode", source)
-- end, 'admin')


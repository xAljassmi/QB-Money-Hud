local QBCore = exports['qb-core']:GetCoreObject()

QBCore.Commands.Add('cash', 'Check Cash Balance', {}, false, function(source, _)
    local Player = QBCore.Functions.GetPlayer(source)
    local cashamount = Player.PlayerData.money.cash
    TriggerClientEvent('R6-Team:client:ShowAccounts', source, 'cash', cashamount)
end)

QBCore.Commands.Add('crypto', 'Check Crypto Balance', {}, false, function(source, _)
    local Player = QBCore.Functions.GetPlayer(source)
    local cryptoamount = Player.PlayerData.money.crypto
    TriggerClientEvent('R6-Team:client:ShowAccounts', source, 'crypto', cryptoamount)
end)

QBCore.Commands.Add('bank', 'Check Bank Balance', {}, false, function(source, _)
    local Player = QBCore.Functions.GetPlayer(source)
    local bankamount = Player.PlayerData.money.bank
    TriggerClientEvent('R6-Team:client:ShowAccounts', source, 'bank', bankamount)
end)

QBCore.Commands.Add('coins', 'Check Coins Balance', {}, false, function(source, _)
    local Player = QBCore.Functions.GetPlayer(source)
    if Player.PlayerData.money.coins then 
        local coinsamount = Player.PlayerData.money.coins
        TriggerClientEvent('R6-Team:client:ShowAccounts', source, 'coins', coinsamount)
    end
end)
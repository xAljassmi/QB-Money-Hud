local QBCore = exports['qb-core']:GetCoreObject()
local PlayerData = QBCore.Functions.GetPlayerData()
local cashAmount = 0
local bankAmount = 0



RegisterNetEvent("QBCore:Client:OnPlayerUnload", function()
    PlayerData = {}
end)

RegisterNetEvent("QBCore:Player:SetPlayerData", function(val)
    PlayerData = val
end)


-- Money HUD
RegisterNetEvent('hud:client:ShowAccounts', function(type, amount, isMinus)
    if type == 'cash' then
        SendNUIMessage({
            action = 'show',
            type = 'cash',
            cash = amount
        })
    else
        SendNUIMessage({
            action = 'show',
            type = 'bank',
            bank = amount
        })
    end
end)

RegisterNetEvent('hud:client:OnMoneyChange', function(type, amount, isMinus)
    QBCore.Functions.GetPlayerData(function(PlayerData)
        cashAmount = PlayerData.money['cash']
        bankAmount = PlayerData.money['bank']
    end)
    SendNUIMessage({
        action = 'update',
        cash = cashAmount,
        bank = bankAmount,
        amount = amount,
        minus = isMinus,
        type = type
    })
end)

RegisterNetEvent('hud:client:ShowAccounts', function(type, amount)
    if type == 'cash' then
        SendNUIMessage({
            action = 'show',
            type = 'cash',
            cash = amount
        })
    elseif type == 'coins' then
        SendNUIMessage({
            action = 'show',
            type = 'coins',
            coins = amount
        })
    elseif type == 'crypto' then
        SendNUIMessage({
            action = 'show',
            type = 'crypto',
            crypto = amount
        })
    else
        SendNUIMessage({
            action = 'show',
            type = 'bank',
            bank = amount
        })
    end
end)

RegisterNetEvent('hud:client:OnMoneyChange', function(type, amount, isMinus)
    cashAmount = PlayerData.money['cash']
    bankAmount = PlayerData.money['bank']
    coinsAmount = PlayerData.money['coins']
    cryptoAmount = PlayerData.money['crypto']
    SendNUIMessage({
        action = 'updatemoney',
        cash = cashAmount,
        bank = bankAmount,
        coins = coinsAmount,
        crypto = cryptoAmount,
        amount = amount,
        minus = isMinus,
        type = type
    })
end)
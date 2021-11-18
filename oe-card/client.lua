
local isOpened = false

RegisterCommand("zortq", function(source, args)
  opencard(args[1])
end)

RegisterNUICallback("exit" , function()
  SetNuiFocus(false, false)
  isOpened = false
end)

function opencard(number)
  SetCursorLocation(0.5, 0.5)
    SetNuiFocus(true, true)
    SendNUIMessage({
      action = "open",
      number = number
    })
    isOpened = truew
end
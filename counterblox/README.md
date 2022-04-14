# Loadstring
```lua
loadstring(game:HttpGet("https://raw.githubusercontent.com/zekgt/lua/main/counterblox/script.lua"))()
```
# method used for the localscript function dump
```lua
local object = getsenv(game.Players.LocalPlayer.PlayerGui:WaitForChild('Client'))
for i,v in next, object do
    print(i, v)
end
```

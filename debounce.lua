getgenv().debounce = spawn(function()
    return { 
     ["key"] = "sus"
    }
  end)
function done()
  getgenv().done = true 
end 
function isDone() 
  return getgenv().done 
end
function new(tick)
  tick = tick * 10 or 3 * 10
  spawn(function ()
      while tick > 0 do
       tick = tick - 1
      end 
      done()
    end ) 
end 
for i, v in pairs(getgenv().config.Game.Weapon) do
    for i1, v1 in pairs(v) do 
    if v1.use then 
    equip(i1) 
        for i2, v2 in pairs(v1) do 
          if i2 ~= 'use' then 
           if v2.use then 
            for a=0,(v2.hold * 60) do  
              keydown(i2) 
              a = a + 1
              
            end
          end
        end
      end
    end
    end
  end 
  
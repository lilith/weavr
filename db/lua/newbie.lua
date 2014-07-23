function message(text, button_text)
  p(text)
  pause(button_text)
end

function clear()
  newpage()
end

function pause()
  set_choices({{id="continue", label="Continue"}})
  local answer
  repeat
    debuglog("waiting on user input")
    answer = wait()
    debuglog(table.show(answer))
  until answer ~= nil and answer.id == "continue" 
end


function choose(options)
  -- Build a dict keyed on both caption hashes and shortcut keys
  local by_id = {}
  for key,value in pairs(options) do
    -- Allow shortcuts (auto-naming)
    if (type(key) == 'number') then
      -- Fallback to autonaming
      if (key == nil) then key = "Go to " .. value end
    end
    by_id[key] = value
    add_choice(key)
  end
  -- Allow either the shortcut key or the hash to be used
  local answer
  repeat
    debuglog("Waiting on user input, valid choices are "..table.show(by_id, "by id"))
    answer = wait()
    debuglog(table.show(answer))
  until answer ~= nil and by_id[answer.id] ~= nil 
  
  dest = by_id[answer.id]
  debuglog("Valid choices are "..table.show(by_id, "valid choices by id"))
  debuglog("Accepted answer: "..answer.id.." with value "..tostring(dest))
  if type(dest) == 'string' then
    goto(dest, 'init')
  else
    dest()
  end
end




function init()
    newpage()
    p[[Hello, you are in room 1]]
    choose({["Go to room 2"] = room2, ["Go to room 3"] = room3})
    room()
end

function room2()
  newpage()
  p[[You are in a room 2]]
  pause()
  init()
end


function room3()
  newpage()
  p[[You are in room 3]]
  pause()
  init()
end

function message(text, button_text)
  p(text)
  pause(button_text)
end

function clear()
  newpage()
end

function pause()
  set_choices({{id="continue", label="Continue"}})
  wait()
end




function init()
    newpage()
    p[[Hello]]
    pause()
    room()
end

function room()
  newpage()
  p[[You are in a room]]
  pause()
  init()
end

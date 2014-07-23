function init()
    p[[Hello]]
    coroutine.yield({status='prompt'})
    room()
end
function room()
  p[[You are in a room]]
  coroutine.yield({status='prompt'})
  init()
end
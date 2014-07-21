class HomeController < ApplicationController

  def index

  time = Benchmark.realtime {       
    s = Rufus::Lua::State.new

        puts s.eval("return table.concat({ 'hello', 'from', 'Lua' }, ' ')")
          #
          # => "Hello from Lua"

        s.close
      }
  puts "Lua time taken: #{time * 1000} milliseconds"


  end

end

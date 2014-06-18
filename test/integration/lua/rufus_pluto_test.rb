require 'test_helper'

class RufusPluto < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "pluto can be used" do

    puptest = File.read(File.expand_path('puptest.lua',File.dirname(__FILE__)))
    pptest = File.read(File.expand_path('pptest.lua', File.dirname(__FILE__)))
    luatest = File.read(File.expand_path('luatest.lua', File.dirname(__FILE__)))
    

    time = Benchmark.realtime {       
      s = Rufus::Lua::State.new()



      result = s.eval(luatest)
      #STDERR << "RESULT: #{result.inspect}"
  

      assert_equal(5, result["a"][5])
      assert_equal(5, result["b"][1])
      assert_equal(10,result["b"][5])
          s.close
        }
    puts "Lua time taken: #{time * 1000} milliseconds"

  end
end

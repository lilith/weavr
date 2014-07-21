class PlayController < ApplicationController
  def index
    incarnate!

    i = current_profile.current_incarnation
    
    @stats
    @output
    @choices
  end

  def update
  end
end

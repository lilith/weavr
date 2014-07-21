class PlayController < ApplicationController
  def index
    incarnate!

    i = current_profile.active_incarnation
    
    @stats = [{name: :hitpoints, max: 10, value: 3}, {name: :health, max: 10, value: 5}]
    @output = ["A paragraph.", "paragraph 2"]
    @choices = [{id: "choice_id", label: "Choice Label"}]
  end

  def update
  end
end

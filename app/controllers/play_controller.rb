class PlayController < ApplicationController
  def index
    incarnate!

    i = current_profile.active_incarnation
    
    @stats = [{name: :hitpoints, max: 10, value: 3}, {name: :health, max: 10, value: 5}]
    @output = ["This is a nice long paragraph of things that are going on. This is a nice long paragraph of things that are going on.This is a nice long paragraph of things that are going on.This is a nice long paragraph of things that are going on.This is a nice long paragraph of things that are going on.This is a nice long paragraph of things that are going on.This is a nice long paragraph of things that are going on.This is a nice long paragraph of things that are going on.This is a nice long paragraph of things that are going on.This is a nice long paragraph of things that are going on.This is a nice long paragraph of things that are going on.This is a nice long paragraph of things that are going on.This is a nice long paragraph of things that are going on.This is a nice long paragraph of things that are going on.This is a nice long paragraph of things that are going on.This is a nice long paragraph of things that are going on.This is a nice long paragraph of things that are going on.This is a nice long paragraph of things that are going on.This is a nice long paragraph of things that are going on.This is a nice long paragraph of things that are going on.This is a nice long paragraph of things that are going on.This is a nice long paragraph of things that are going on.This is a nice long paragraph of things that are going on.This is a nice long paragraph of things that are going on.This is a nice long paragraph of things that are going on.This is a nice long paragraph of things that are going on.This is a nice long paragraph of things that are going on.This is a nice long paragraph of things that are going on.This is a nice long paragraph of things that are going on.This is a nice long paragraph of things that are going on.This is a nice long paragraph of things that are going on.This is a nice long paragraph of things that are going on.This is a nice long paragraph of things that are going on.This is a nice long paragraph of things that are going on.This is a nice long paragraph of things that are going on.This is a nice long paragraph of things that are going on.This is a nice long paragraph of things that are going on.This is a nice long paragraph of things that are going on.This is a nice long paragraph of things that are going on.This is a nice long paragraph of things that are going on.This is a nice long paragraph of things that are going on.This is a nice long paragraph of things that are going on.This is a nice long paragraph of things that are going on.his is a nice long paragraph of things that are going on. his is a nice long paragraph of things that are going on. his is a nice long paragraph of things that are going on. his is a nice long paragraph of things that are going on.", "This contains the information you need to know to proceed, and gives an option."]
    @choices = [{id: "choice_id", label: "Choice Label"}, {id: "choice_id", label: "Another choice"}]
    @barwidth = 30 #@stats[0][:value].to_f / @stats[0][:max].to_f * 100


  end

  def update
  end
end

class PlayController < ApplicationController
  def index
    
    incarnate!

    i = current_profile.active_incarnation

    @branch_id = "master"
    @user_id = current_profile.id

    @data = WeaverEngine::FsysDataAdapter.new(@user_id,@branch_id, "tmp/data", "db/lua")
    @display = WeaverEngine::HtmlDisplayAdapter.new(@data)
    @engine = WeaverEngine::Engine.new(@user_id, @branch_id, @data, @display)

    @stats = @display.stats

    @response = @engine.request(params)

    @output = @display.prose
    @choices = @display.choices
    #@stats = [{name: :hitpoints, max: 10, value: 3}, {name: :health, max: 10, value: 5}]
    #@output = ["A paragraph.", "paragraph 2"]
    #@choices = [{id: "choice_id", label: "Choice Label"}]
	 @stats = [{name: :hitpoints, max: 10, value: 3}, {name: :health, max: 10, value: 5}]
    
  end

  def update
    index
  end


end

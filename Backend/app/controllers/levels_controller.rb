class LevelsController < ApplicationController
    get "/levels" do
        levels = Level.all
        levels.to_json
    end
end
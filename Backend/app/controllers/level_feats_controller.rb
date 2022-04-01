class LevelFeatsController < ApplicationController
    get "/level_feats" do
        level_feats = LevelFeat.all
        level_feats.to_json
    end
end
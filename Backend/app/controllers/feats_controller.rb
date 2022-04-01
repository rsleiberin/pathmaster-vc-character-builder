class FeatsController < ApplicationController
    get "/feats" do
        feats = Feat.all
        feats.to_json
    end
end
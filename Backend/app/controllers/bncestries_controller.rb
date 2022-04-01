class AncestriesController < ApplicationController
    get "/ancestries" do
        ancestries = Ancestry.all
        ancestries.to_json
    end
end
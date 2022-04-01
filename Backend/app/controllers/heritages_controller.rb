class HeritagesController < ApplicationController
    get "/Heritages" do
        heritages = Heritage.all
        heritages.to_json
    end
end
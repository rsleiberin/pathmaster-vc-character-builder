class VersionsController < ApplicationController
    get "/versions" do
        versions = Version.all
        versions.to_json
    end
end
class CharacterClassesController < ApplicationController
    get "/character_classes" do
        character_classes = CharacterClass.all
        character_classes.to_json
    end
end
class CharactersController < ApplicationController
    get "/characters" do
        characters = Character.all
        characters.to_json(
            include: {
                versions: {
                    include:{
                        ancestry: {},
                        character_class: {},
                        heritage: {},
                        levels: {
                            include:{
                                level_feats: {}
                            }
                        }
                    }
                }
            }
        )
    end
    get "/:user_id/characters" do
        puts "USER FETCH"
        characters = User.find(params[:user_id]).characters
        puts "Returned", characters
        characters.to_json(
            include: {
                versions: {
                    include:{
                        ancestry: {},
                        character_class: {},
                        heritage: {},
                        levels: {
                            include:{
                                level_feats: {}
                            }
                        }
                    }
                }
            }
        )
    end
    get "/:user_id/create_character" do
        puts "Creating Character"
        character1 = Character.create(user_id: params[:user_id])

        version1 = Version.create(character_id: character1.id, version_name:"Version 1", first_name:"Rolan", last_name: "Lodestone", is_wip: false, image: "https://cdn.discordapp.com/attachments/926561281224372225/955084877043224668/token_1.png")
        version2 = Version.create(character_id: character1.id, version_name:"Version 1", first_name:"Rolan", last_name: "Lodestone", is_wip: true, image: "https://cdn.discordapp.com/attachments/926561281224372225/955084877043224668/token_1.png")

        character1[:primary_version] = version1.id
        character1[:work_in_progress] = version2.id

        character1.save

        level1= Level.create(version_id: version1.id, level_number: 1)
        level2= Level.create(version_id: version1.id, level_number: 2)
        level3= Level.create(version_id: version1.id, level_number: 3)
        level4= Level.create(version_id: version1.id, level_number: 4)
        level5= Level.create(version_id: version1.id, level_number: 5)
        level6= Level.create(version_id: version1.id, level_number: 6)
        level7= Level.create(version_id: version1.id, level_number: 7)
        level8= Level.create(version_id: version1.id, level_number: 8)
        level9= Level.create(version_id: version1.id, level_number: 9)
        level10= Level.create(version_id: version1.id, level_number: 10)
        level11= Level.create(version_id: version1.id, level_number: 11)
        level12= Level.create(version_id: version1.id, level_number: 12)
        level13= Level.create(version_id: version1.id, level_number: 13)
        level14= Level.create(version_id: version1.id, level_number: 14)
        level15= Level.create(version_id: version1.id, level_number: 15)
        level16= Level.create(version_id: version1.id, level_number: 16)
        level17= Level.create(version_id: version1.id, level_number: 17)
        level18= Level.create(version_id: version1.id, level_number: 18)
        level19= Level.create(version_id: version1.id, level_number: 19)
        level20= Level.create(version_id: version1.id, level_number: 20)

        level21= Level.create(version_id: version2.id, level_number: 1)
        level22= Level.create(version_id: version2.id, level_number: 2)
        level23= Level.create(version_id: version2.id, level_number: 3)
        level24= Level.create(version_id: version2.id, level_number: 4)
        level25= Level.create(version_id: version2.id, level_number: 5)
        level26= Level.create(version_id: version2.id, level_number: 6)
        level27= Level.create(version_id: version2.id, level_number: 7)
        level28= Level.create(version_id: version2.id, level_number: 8)
        level29= Level.create(version_id: version2.id, level_number: 9)
        level30= Level.create(version_id: version2.id, level_number: 10)
        level31= Level.create(version_id: version2.id, level_number: 11)
        level32= Level.create(version_id: version2.id, level_number: 12)
        level33= Level.create(version_id: version2.id, level_number: 13)
        level34= Level.create(version_id: version2.id, level_number: 14)
        level35= Level.create(version_id: version2.id, level_number: 15)
        level36= Level.create(version_id: version2.id, level_number: 16)
        level37= Level.create(version_id: version2.id, level_number: 17)
        level38= Level.create(version_id: version2.id, level_number: 18)
        level39= Level.create(version_id: version2.id, level_number: 19)
        level40= Level.create(version_id: version2.id, level_number: 20)

        level_feat1= LevelFeat.create(level_id: level3.id, feat_slot: "General", feat_source: "Basic Progression")
        level_feat2= LevelFeat.create(level_id: level7.id, feat_slot: "General", feat_source: "Basic Progression")
        level_feat3= LevelFeat.create(level_id: level11.id, feat_slot: "General", feat_source: "Basic Progression")
        level_feat4= LevelFeat.create(level_id: level15.id, feat_slot: "General", feat_source: "Basic Progression")
        level_feat5= LevelFeat.create(level_id: level19.id, feat_slot: "General", feat_source: "Basic Progression")

        level_feat6= LevelFeat.create(level_id: level23.id, feat_slot: "General", feat_source: "Basic Progression")
        level_feat7= LevelFeat.create(level_id: level27.id, feat_slot: "General", feat_source: "Basic Progression")
        level_feat8= LevelFeat.create(level_id: level31.id, feat_slot: "General", feat_source: "Basic Progression")
        level_feat9= LevelFeat.create(level_id: level35.id, feat_slot: "General", feat_source: "Basic Progression")
        level_feat10= LevelFeat.create(level_id: level39.id, feat_slot: "General", feat_source: "Basic Progression")

        ancestry1= Ancestry.create(version_id: version1.id)
        ancestry2= Ancestry.create(version_id: version2.id)

        character_class1= CharacterClass.create(version_id:version1.id)
        character_class2= CharacterClass.create(version_id:version2.id)

        heritage1= Heritage.create(version_id:version1.id)
        heritage2= Heritage.create(version_id:version2.id)

        character1.to_json(
            include: {
                versions: {
                    include:{
                        ancestry: {},
                        character_class: {},
                        heritage: {},
                        levels: {
                            include:{
                                level_feats: {}
                            }
                        }
                    }
                }
            }
        )
    end
    get "/destroy_character/:character_id" do
        character = Character.find(params[:character_id])
        character.destroy
    end
end